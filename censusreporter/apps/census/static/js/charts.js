/*
Pass in an options object that includes data, get back a D3 chart.

Chart({
    chartContainer: chartID, # the ID of the element where the chart should be drawn
    chartType: chartType, # `pie` or `column` (TODO: more chart types)
    chartStatType: chartStatType, # pass in `percentage` to format display of data values accordingly
    chartHeight: chartHeight, # pass in int; defaults to height of parent container or 180, whichever is greater
    chartColorScale: chartColorScale, # name of scale defined in chart.colorbrewer, defaults to 'Set2'
    chartData: chartData # an object that can be mapped, returning `name` and `value` properties
})
*/

function Chart(options) {
    var chart = {};
    
    chart.init = function(options) {
        // establish our base vars
        chart.chartContainer = d3.select('#'+options.chartContainer)
            .append("div")
                .style("position", "relative");
        
        chart.parentHeight = chart.getParentHeight();
        chart.chartType = options.chartType;
        chart.chartChartTitle = options.chartChartTitle || null;
        chart.chartQualifier = options.chartQualifier || null;
        chart.chartInitialSort = options.chartInitialSort || null;
        chart.chartStatType = options.chartStatType || 'number';
        chart.chartChartShowYAxis = options.chartChartShowYAxis || (chart.chartStatType == "percentage" ? true : false);
        chart.chartHeight = options.chartHeight || (chart.parentHeight < 180 ? 180 : chart.parentHeight);
        chart.chartColorScale = options.chartColorScale || 'Set2S';
        chart.comparisonNames = {
            'this': (!!options.comparisonThisName) ? options.comparisonThisName : 'here',
            'province': (!!options.comparisonProvinceName) ? options.comparisonProvinceName : 'province',
            'country': (!!options.comparisonNationName) ? options.comparisonNationName : 'South Africa'
        }
        chart.comparisonNamePhrases = {
            'this': (!!options.comparisonThisName) ? 'in ' + options.comparisonThisName : 'here',
            'province': (!!options.comparisonProvinceName) ? 'in ' + options.comparisonProvinceName : 'provincewide',
            'country': (!!options.comparisonNationName) ? 'in ' + options.comparisonNationName : 'countrywide'
        }
        
        var dataObj,
            metadataFields = ['metadata', 'acs_release'];
        
        // filter out metadata objects before we prep data for chart
        chart.chartDataValues = d3.map(options.chartData);
        metadataFields.forEach(function(v) {
            chart.chartDataValues.remove(v)
        })

        // keep the initial data for possible display later
        chart.initialData = options.chartData;
        chart.initialValues = chart.chartDataValues;
        
        chart.chartDataValues = d3.values(chart.chartDataValues).map(function(d) {
            if (chart.chartType.indexOf('grouped_') != -1) {
                // data shaped for grouped-column or -bar presentation
                dataObj = {
                    name: d.metadata.name,
                    values: []
                }
                d3.keys(d).filter(function(v) { return chart.exclude(metadataFields, v) })
                    .forEach(function(v, i) {
                        dataObj.values.push({
                            name: v,
                            value: +d[v].values.this,
                            context: d[v]
                        })
                    })
            } else {
                // otherwise, just grab the name and value of the data point
                dataObj = {
                    name: d.name,
                    value: +d.values.this,
                    context: d
                }
            }
            return dataObj
        });
        
        // set base chart dimensions
        chart.settings = {
            width: parseInt(chart.chartContainer.style('width'), 10) - parseInt(chart.chartContainer.style('margin-right'), 10),
            height: chart.chartHeight,
            margin: { top: 0, right: 0, bottom: 0, left: 0 },
            hovercardBuffer: { x: 0, y: 25 }
        }
        
        // add blank hovercard
        chart.initHovercard()

        // time to make the chart
        chart.draw();
        return chart;
    };
    
    chart.draw = function() {
        chart.chartContainer
            .classed("chart", true);
            
        // hand off based on desired type of chart
        if (chart.chartType == 'pie') {
            chart.makePieChart();
        } else if (chart.chartType == 'column' || chart.chartType == 'grouped_column' || chart.chartType == 'histogram') {
            chart.makeColumnChart();
        } else if (chart.chartType == 'bar' || chart.chartType == 'grouped_bar') {
            chart.makeBarChart();
        }
        return chart;
    }

    chart.makeBarChart = function() {
        chart.chartContainer
            .classed("bar-chart", true);

        // add basic settings specific to this chart type
        chart.updateSettings({
            margin: { top: 0, right: 10, bottom: 0, left: 10 },
            tickPadding: 5,
            outerColumnPadding: .25,
            columnPadding: .1
        });

        // add optional title, adjust height if necessary
        if (!!chart.chartChartTitle) {
            chart.addChartTitle(chart.chartContainer);
        }

        chart.updateSettings({
            displayWidth: chart.settings.width - chart.settings.margin.left - chart.settings.margin.right,
            displayHeight: chart.settings.height - chart.settings.margin.top - chart.settings.margin.bottom
        });

        // primary div container
        chart.htmlBaseContainer = chart.chartContainer.append("div")
            .attr("class", "div-chart")
            .attr("width", "100%");

        // x scale and axis, account for raw number vs. percentages
        if (chart.chartStatType == 'percentage') {
            var xDomain = [0, 100],
                xTickRange = d3.range(0, 101, 25);
        } else {
            if (chart.chartType == 'grouped_bar') {
                var xValues = [];
                chart.chartDataValues.forEach(function(d, i) {
                    d3.values(d.values).forEach(function(v, i) {
                        xValues.push(v.value)
                    });
                });
            } else {
                var xValues = chart.chartDataValues.map(function(d) { return d.value; });
            }
            var xDomain = [0, (d3.max(xValues) * 1.33)],
                xTickRange = d3.range(0, (d3.max(xValues) * 1.33), ((d3.max(xValues) * 1.33) / 5));
        }
        chart.x = d3.scale.linear()
            .range([chart.settings.displayWidth, 0])
            .domain(xDomain);

        chart.htmlBase = chart.htmlBaseContainer.selectAll(".bar-set")
                .data(chart.chartDataValues)
            .enter().append("div")
                .classed("bar-set", true);
                
        if (chart.chartType == 'grouped_bar') {
            // grouped presentation
            chart.barGroups = chart.htmlBase
                .append("div")
                    .attr("class", "bar-group")
                    .each(function(d, i) {
                        var g = d3.select(this),
                            groupValues = d3.values(d.values);

                        // place each label at top of bar-group
                        g.append("h3")
                            .classed("chart-title", true)
                            .text(function(d) {
                                return d.name;
                            });
                            
                        // drop each bar into bar-group
                        groupValues.forEach(function(v, i) {
                            bar = g.append("a")
                                .attr("class", "bar")
                                .style("position", "relative")
                                .style("width", function(d) { return (chart.settings.displayWidth) + "px"; })
                                .datum(function (d) { return v });
                                
                            bar.append("span")
                                .attr("class", "area")
                                .style("background-color", chart.colorbrewer[chart.chartColorScale][i])
                                .style("width", function(d) { return (chart.settings.displayWidth - chart.x(d.value)) + "px"; });
                                
                            bar.append("span")
                                .classed("label", true)
                                .style("left", function(d) { return (chart.settings.displayWidth - chart.x(d.value)) + "px"; })
                                .text(function(d) {
                                    return chart.valFmt(v.value);
                                });
                                
                            // add the specific label below the bar
                            g.append("h4")
                                .classed("label secondary", true)
                                .text(function(d) {
                                    return chart.capitalize(v.name);
                                });
                        });
                    });
        } else {
            // standard presentation
            chart.bars = chart.htmlBase
                .append("a")
                    .attr("class", "bar")
                    .style("position", "relative")
                    .style("width", function(d) { return (chart.settings.displayWidth) + "px"; })
                    .datum(function (d) { return d });
                    
            chart.barAreas = chart.bars
                .append("span")
                    .attr("class", "area")
                    .style("background-color", chart.colorbrewer[chart.chartColorScale][0])
                    .style("width", function(d) { return (chart.settings.displayWidth - chart.x(d.value)) + "px"; });

            chart.bars
                .append("span")
                    .classed("label", true)
                    .style("left", function(d) { return (chart.settings.displayWidth - chart.x(d.value)) + "px"; })
                    .text(function(d) {
                        return chart.valFmt(d.value);
                    });

            // labels appear below bars
            chart.labels = chart.htmlBase
                .append("h4")
                    .classed("label", true)
                    .text(function(d) {
                        return d.name;
                    });
        }

        // now that bars are in place, capture height for hover calculations
        chart.settings.height = parseInt(chart.chartContainer.style('height'), 10);
        
        // listen for column hovers
        chart.bars = chart.htmlBase.selectAll(".bar")
            .on("mouseover", chart.mouseover)
            .on("mouseout", chart.mouseout);
            
        chart.chartContainer
            .on("mousemove", chart.mousemove);

        if (chart.chartType !== 'grouped_bar') {
            chart.getData = chart.chartContainer
                .append("a")
                    .classed("chart-get-data", true)
                    .text("Show the data")
                    .on("click", chart.toggleDataDrawer);
        }
        
        if (!!chart.chartQualifier) {
            chart.addChartQualifier(chart.chartContainer);
        }

        return chart;
    }
    
    chart.makeColumnChart = function() {
        chart.chartContainer
            .classed("column-chart", true);
        
        // add basic settings specific to this chart type
        chart.updateSettings({
            margin: { top: 20, right: 0, bottom: 10, left: 30 },
            tickPadding: 5,
            outerColumnPadding: .25,
            columnPadding: .1
        });
        
        // adjust left margin, padding for charts hiding Y axis
        if (!chart.chartChartShowYAxis || chart.chartChartShowYAxis == 'false') {
            chart.updateSettings({
                margin: { top: 20, right: 0, bottom: 10, left: 0 },
                tickPadding: 5,
                outerColumnPadding: .05,
            });
        }

        // store width and height available for chart elements
        chart.updateSettings({
            displayWidth: chart.settings.width - chart.settings.margin.left - chart.settings.margin.right,
            displayHeight: chart.settings.height - chart.settings.margin.top - chart.settings.margin.bottom
        });
        
        // create the base for upcoming html elements
        chart.htmlBase = chart.chartContainer.append("div")
            .attr("class", "column-set")
            .style("margin-top", function() {
                return (chart.chartChartShowYAxis) ? -(chart.settings.height) + "px" : "0";
            })
            .style("height", chart.settings.height + "px");

        // add optional title, adjust height available height for arcs if necessary
        if (!!chart.chartChartTitle) {
            chart.addChartTitle(chart.htmlBase);
            chart.settings.displayHeight -= 20;
        }

        // narrow padding for histograms
        if (chart.chartType == 'histogram') {
            chart.updateSettings({
                columnPadding: .025
            });
        }

        // extra padding between groups for grouped columns
        if (chart.chartType == 'grouped_column') {
            chart.updateSettings({
                columnPadding: .2,
            });
            chart.settings.height += 25;
        }

        // x scale, axis and labels
        chart.x = d3.scale.ordinal()
            .rangeRoundBands([0, chart.settings.displayWidth], chart.settings.columnPadding, chart.settings.outerColumnPadding)
            .domain(chart.chartDataValues.map(function(d) { return d.name; }));

        // y scale and axis, account for raw number vs. percentages
        if (chart.chartStatType == 'percentage') {
            var yDomain = [0, 100],
                yTickRange = d3.range(0, 101, 25);
        } else {
            if (chart.chartType == 'grouped_column') {
                var yValues = [];
                chart.chartDataValues.forEach(function(d, i) {
                    d3.values(d.values).forEach(function(v, i) {
                        yValues.push(v.value)
                    });
                });
            } else {
                var yValues = chart.chartDataValues.map(function(d) { return d.value; });
            }
            
            var yDomain = [0, (d3.max(yValues) * 1.33)],
                yTickRange = d3.range(0, (d3.max(yValues) * 1.33), ((d3.max(yValues) * 1.33) / 5));
        }
        chart.y = d3.scale.linear()
            .range([chart.settings.displayHeight, 0])
            .domain(yDomain);
            
        if (chart.chartChartShowYAxis) {
            // if we really need to render a y axis, easier to use an svg
            chart.svgBaseContainer = chart.chartContainer.append("svg")
                    .attr("class", "svg-chart")
                    .attr("width", "100%")
                    .attr("height", chart.settings.height);

            // base where columns and axes will be attached
            chart.svgBase = chart.svgBaseContainer.append("g")
                    .attr("transform", "translate(" + chart.settings.margin.left + "," + chart.settings.margin.top + ")");

            chart.yAxis = d3.svg.axis()
                .scale(chart.y)
                .orient("left")
                .tickSize(-chart.settings.displayWidth)
                .tickPadding(chart.settings.tickPadding)
                .tickValues(yTickRange);

            chart.yAxisBase = chart.svgBase.append("g")
                .attr("class", "y axis")
                .call(chart.yAxis);
        }
        
        // add columns as <a> elements, with built-in category labels
        if (chart.chartType == 'grouped_column') {
            var g, groupValues, columnWidth, column;

            chart.chartContainer
                .classed('grouped-column-chart', true);
                
            chart.columnGroups = chart.htmlBase.selectAll(".column-group")
                    .data(chart.chartDataValues)
                .enter().append("div")
                    .attr("class", "column-group")
                    .each(function(d, i) {
                        g = d3.select(this);
                        groupValues = d3.values(d.values);
                        columnWidth = Math.floor(chart.x.rangeBand() / groupValues.length);
                        
                        g.append("span")
                            .classed("x axis label", true)
                            .style("width", chart.x.rangeBand() + "px")
                            .style("top", function(d) { return (chart.settings.displayHeight + 55) + "px"; })
                            .style("left", function(d) { return (chart.x(d.name) + chart.settings.margin.left) + "px"; })
                            .text(function(d) { return chart.capitalize(d.name); });
                            
                        groupValues.forEach(function(v, i) {
                            column = g.append("a").attr("class", "column")
                                .style("width", columnWidth + "px")
                                .style("bottom", function(d) { return (chart.settings.margin.bottom + chart.settings.tickPadding - 1) + "px"; })
                                .style("left", function(d) { return (chart.x(d.name) + chart.settings.margin.left + ((columnWidth + 2) * i)) + "px"; })
                                .style("height", function(d) { 
                                    return (chart.settings.displayHeight) + "px"; 
                                })
                                .datum(function (d) { return v });

                            column.append("span").attr("class", "area")
                                .style("position", "absolute")
                                .style("background-color", chart.colorbrewer[chart.chartColorScale][i])
                                .style("width", columnWidth + "px")
                                .style("bottom", "0")
                                .style("height", function(d) { 
                                    return (chart.settings.displayHeight - chart.y(v.value)) + "px";
                                });
                                
                            column.append("span")
                                .classed("x axis label secondary", true)
                                .style("bottom", "-16px")
                                .text(function(d) { return chart.capitalize(v.name); });
                                
                            column.append("span")
                                .classed("label", true)
                                .style("bottom", function(d) {
                                    return (chart.settings.displayHeight - chart.y(v.value) + 3) + "px";
                                })
                                .text(function(d) {
                                    return chart.valFmt(v.value);
                                });
                            });
                        });
                        
            // now that we've created all the columns in their groups,
            // select them for hover handling
            chart.columns = chart.htmlBase.selectAll(".column");
        } else {
            chart.columns = chart.htmlBase.selectAll(".column")
                    .data(chart.chartDataValues)
                .enter().append("a")
                    .attr("class", "column")
                    .style("width", chart.x.rangeBand() + "px")
                    .style("bottom", function(d) { return (chart.settings.margin.bottom + chart.settings.tickPadding - 1) + "px"; })
                    .style("left", function(d) { return (chart.x(d.name) + chart.settings.margin.left) + "px"; })
                    .style("height", function(d) { return (chart.settings.displayHeight) + "px"; });
                    
            chart.columnAreas = chart.columns
                .append("span")
                    .attr("class", "area")
                    .style("position", "absolute")
                    .style("background-color", chart.colorbrewer[chart.chartColorScale][0])
                    .style("width", chart.x.rangeBand() + "px")
                    .style("bottom", function(d) { return (chart.settings.margin.bottom + chart.settings.tickPadding - 1) + "px"; })
                    .style("height", function(d) { return (chart.settings.displayHeight - chart.y(d.value)) + "px"; });

            chart.columnAreas
                .append("span")
                    .classed("x axis label", true)
                    .style("bottom", "-16px")
                    .text(function(d) { return d.name; });

            chart.labels = chart.columnAreas
                .append("span")
                    .classed("label", true)
                    .style("bottom", function(d) {
                        return (chart.settings.displayHeight - chart.y(d.value) + 3) + "px";
                    })
                    .text(function(d) {
                        return chart.valFmt(d.value);
                    });
        }

        // listen for column hovers
        chart.columns
            .on("mouseover", chart.mouseover)
            .on("mouseout", chart.mouseout);
            
        chart.chartContainer
            .on("mousemove", chart.mousemove);

        if (chart.chartType !== 'grouped_column') {
            chart.getData = chart.chartContainer
                .append("a")
                    .classed("chart-get-data", true)
                    .text("Show the data")
                    .on("click", chart.toggleDataDrawer);
        }

        if (!!chart.chartQualifier) {
            chart.addChartQualifier(chart.chartContainer);
        }

        return chart;
    }

    chart.makePieChart = function() {
        chart.chartContainer
            .classed("pie-chart", true);
            
        // give the chart display dimensions
        chart.updateSettings({
            legendWidth: chart.settings.width * .38,
            pieWidth: chart.settings.width * .58,
            displayWidth: chart.settings.width - chart.settings.margin.left - chart.settings.margin.right,
            displayHeight: chart.settings.height - chart.settings.margin.top - chart.settings.margin.bottom
        });
        
        // add optional title, adjust height available height for arcs if necessary
        if (!!chart.chartChartTitle) {
            chart.addChartTitle(chart.chartContainer);
            chart.settings.displayHeight -= 20;
        }
        
        // if width is narrow enough that legend won't have room
        // for decent display, drop it below the chart instead
        if ((chart.settings.pieWidth / chart.settings.displayHeight) < .85) {
            chart.updateSettings({
                legendWidth: chart.settings.displayWidth,
                pieWidth: chart.settings.width * .78,
            });
        }
        
        // give the chart its radius
        chart.updateSettings({
            radius: (Math.min(chart.settings.pieWidth, chart.settings.displayHeight) / 2.05),
            pieCenter: chart.settings.pieWidth / 2
        });

        // create array of categories specific to this chart
        chart.chartCategories = d3.values(chart.chartDataValues).map(function(d) {
            return d.name
        });
        
        // use ColorBrewer Set2 for pie charts
        chart.color = d3.scale.ordinal()
            .domain(chart.chartCategories)
            .range(chart.colorbrewer[chart.chartColorScale]);
        
        // adjust radii to set chart's size relative to container
        chart.arc = d3.svg.arc()
            .outerRadius(chart.settings.radius)
            .innerRadius(chart.settings.radius / 1.5);

        // put this chart's data into D3 pie layout
        chart.pie = d3.layout.pie()
            .sort(null)
            .value(function(d) { return d.value; });
        chart.pieData = chart.pie(chart.chartDataValues);
        
        // get the max value for initial labeling
        if (!!chart.chartInitialSort) {
            chart.initialSlice = chart.pieData.slice(0).sort(chart.sortDataBy(chart.chartInitialSort))[0];
        } else {
            chart.initialSlice = chart.pieData[0];
        }
        
        // primary svg container
        chart.svgBase = chart.chartContainer.append("svg")
            .attr("class", "svg-chart")
            .attr("width", "100%")
            .attr("height", chart.settings.displayHeight);

        // group for arcs, to be added later
        chart.arcGroup = chart.svgBase.append("g")
            .attr("class", "arc-group")
            .attr("transform", "translate(" + ((chart.settings.pieWidth) / 2) + "," + ((chart.settings.displayHeight / 2) + chart.settings.margin.top) + ")");

        // primary html container
        chart.htmlBase = chart.chartContainer.append("div")
            .attr("class", "div-chart")
            .style("position", "relative")
            .style("width", "0")
            .style("margin-top", -(chart.settings.displayHeight) + "px")
            .style("height", chart.settings.displayHeight + "px");

        // center text group
        chart.centerGroup = chart.htmlBase.append("div")
            .attr("class", "center-group")
            .style("position", "relative")
            .style("width", "0")
            .style("height", chart.settings.displayHeight + "px");

        // center label
        chart.centerLabel = chart.centerGroup.append("span")
            .attr("class", "label-name")
            .style("left", chart.settings.pieCenter + "px")
            .style("margin-left", -((chart.settings.radius / 1.5) * .95) + "px")
            .style("bottom", ((chart.settings.displayHeight / 2) + chart.settings.margin.top + 11) + "px")
            .style("width", ((chart.settings.radius / 1.5) * 1.9) + "px");

        // center value
        chart.centerValue = chart.centerGroup.append("span")
            .attr("class", "label-value")
            .style("left", chart.settings.pieCenter + "px")
            .style("margin-left", -((chart.settings.radius / 1.5) * .95) + "px")
            .style("top", ((chart.settings.displayHeight / 2) + chart.settings.margin.top - 6) + "px")
            .style("width", ((chart.settings.radius / 1.5) * 1.9) + "px");

        // hover state highlights the arc and associated legend item,
        // and displays the data name and value in center of chart.
        // filters based on data to trigger arc/legend at same time.
        chart.arcHover = function(data) {
            chart.arcs
                .filter(function(d) {
                    return d == data;
                })
                .classed("hovered", true)

            chart.legendItems
                .filter(function(d) {
                    return d == data;
                })
                .classed("hovered", true);
            
            chart.centerLabel.text(data.data.name);
            chart.centerValue.text(function() {
                return chart.valFmt(data.data.value);
            });
            
            // also trigger standard mouseover
            chart.mouseover(data.data);
        }

        // return arc and associated legend item to normal styles
        chart.arcReset = function() {
            chart.arcs
                .classed("hovered", false);
            chart.legendItems
                .classed("hovered", false);

            chart.centerLabel.text(chart.initialSlice.data.name);
            chart.centerValue.text(chart.valFmt(chart.initialSlice.data.value));
            
            chart.mouseout();
        }

        // add arc paths to arc group
        chart.arcs = chart.arcGroup.selectAll(".arc")
                .data(chart.pieData)
            .enter().append("path")
                .classed("arc", true)
                .attr("d", chart.arc)
                .style("fill", function(d) { return chart.color(d.data.name); });
                
        // place legend to right of chart, or below if necessary
        if (chart.settings.legendWidth < chart.settings.displayWidth) {
            chart.legend = chart.htmlBase.append("ul")
                .attr("class", "legend")
                    .style("position", "absolute")
                    .style("width", chart.settings.legendWidth + "px")
                    .style("left", (chart.settings.displayWidth - chart.settings.legendWidth) + "px")
                    .style("top", "1em");
        } else {
            chart.legend = chart.chartContainer.append("ul")
                .attr("class", "legend legend-full-width");
        }

        // add legend items
        var g;
        chart.legendItems = chart.legend.selectAll('li')
                .data(chart.pieData)
            .enter().append("li")
                .attr("class", "legend-item")
                .each(function(d, i) {
                    g = d3.select(this);
                    g.append("span")
                        .attr("class", "swatch")
                        .style("background-color", function(d) { return chart.color(d.data.name); });

                    g.append("span")
                        .attr("class", "label")
                        .text(d.data.name);
                });
                
        // add initial center label
        chart.arcReset();

        // listen for arc hovers
        chart.arcs
            .on("mouseover", chart.arcHover)
            .on("mouseout", chart.arcReset);
        
        // listen for legend hovers
        chart.legendItems
            .on("mouseover", chart.arcHover)
            .on("mouseout", chart.arcReset);

        chart.chartContainer
            .on("mousemove", chart.mousemove);

        chart.getData = chart.chartContainer
            .append("a")
                .classed("chart-get-data", true)
                .text("Show the data")
                .on("click", chart.toggleDataDrawer);

        // add any explanatory lines
        if (!!chart.chartQualifier) {
            chart.addChartQualifier(chart.chartContainer);
        }
        
        return chart;
    }
    
    chart.toggleDataDrawer = function() {
        var row = d3.select(chart.findAncestor(this, 'section'));
        chart.dataDrawer = row.select("#data-drawer");
        
        if (chart.dataDrawer.empty()) {
            d3.select(this).text('Hide the data');
            
            chart.chartContainer.classed("highlighted", true);
            
            chart.dataDrawer = row.append("div")
                    .attr("id", "data-drawer")
                    .attr("class", "column-full");
                    
            chart.dataDrawer.append("h3")
                    .attr("class", "chart-title")
                    .text(function() {
                        if (!!chart.chartChartTitle) {
                            return chart.chartChartTitle + " (Table " + chart.capitalize(chart.initialData.metadata.table_id) + ")"
                        }
                        return "Table " + chart.capitalize(chart.initialData.metadata.table_id)
                    });

            chart.dataTable = chart.dataDrawer.append("table")
                    .attr("id", "data-table")
                    .attr("class", "full-width");
                    
            chart.dataTableHeader = chart.dataTable.append("thead")
                .append("tr")
                    .html(function() { return chart.makeDataDrawerHeader(chart.chartDataValues[0]) });

            chart.tableRows = chart.dataTable.append("tbody")
                .selectAll("tr")
                    .data(chart.chartDataValues)
                .enter().append("tr")
                    .html(function(d) { return chart.makeDataDrawerRow(d) });
        } else {
            chart.dataDrawer.remove();
            d3.select(this).text('Show the data');
            chart.chartContainer.classed("highlighted", false);
        }
    }
    
    chart.makeDataDrawerHeader = function(d) {
        var places = ['this', 'province', 'country'],
            rowBits = ['<th class="name">Column</th>'],
            colspan,
            cellContents;
            
        places.forEach(function(k, i) {
            if (d.context.values[k] >= 0) {
                colspan = (d.context.numerators[k] !== null) ? 2 : 1;
                cellContents = chart.comparisonNames[k];
                rowBits.push('<th class="name" colspan="' + colspan + '">' + cellContents + '</th>');
            }
        });
        return rowBits.join('');
    }
    
    chart.makeDataDrawerRow = function(d) {
        var places = ['this', 'province', 'country'],
            rowBits = ['<td class="name">' + d.name + '</td>'],
            cellContents;
            
        places.forEach(function(k, i) {
            if (d.context.values[k] >= 0) {
                // add the primary value
                rowBits.push('<td class="value">' + chart.valFmt(d.context.values[k]) + ' </td>');

                // add the numerator value if it exists
                if (d.context.numerators[k] !== null) {
                    cellContents = chart.commaFmt(d.context.numerators[k]);
                    rowBits.push('<td class="value">' + cellContents + '</td>');
                }
            }
        });
        return rowBits.join('');
    }
    
    chart.initHovercard = function() {
        chart.hovercard = chart.chartContainer.append("div")
            .attr("class", "hovercard")
            .style("width", "200px")
            .style("opacity", 1e-6);
    }
    
    chart.fillHovercard = function(data) {
        var value,
            index,
            phraseBits,
            compareBits,
            contextData = data.context,
            cardStat = chart.valFmt(contextData.values.this),
            cardComparison = [];
            
        // add cardStat MOE
        //cardStat += "&nbsp;<span class='context'>&plusmn;" + chart.valFmt(contextData.error.this) +"</span>";
        // add cardStat ABSOLUTE VALUE
        //if (!!contextData.numerators.this) {
        //    cardStat += "<span class='push-right'>" + chart.valFmt(contextData.numerators.this, true) + moeFlag + "&nbsp;<span class='context'>&plusmn;" + chart.valFmt(contextData.numerator_errors.this, true) + "</span></span>";
        //}

        d3.keys(contextData.values).forEach(function(k, i) {
            if (k != 'this' && k.indexOf('_index') == -1) {
                value = contextData.values[k];
                index = contextData.values[k + '_index'];
                
                // generate the comparative text for this parent level
                if (!!index) {
                    phraseBits = chart.getComparisonThreshold(index);
                    compareBits = "<strong>" + phraseBits[0] + "</strong> " + phraseBits[1] + " the " + chart.getComparisonNoun() + " " + chart.comparisonNamePhrases[k] + ": " + chart.valFmt(value);

                    // add comparison MOE
                    //compareBits += "&nbsp;<span class='context'>&plusmn;" + chart.valFmt(contextData.error[k]) +"</span>";
                    // add comparison ABSOLUTE VALUE
                    //if (!!contextData.numerators[k]) {
                    //    compareBits += "<span class='push-right'>" + chart.valFmt(contextData.numerators[k], true) + moeFlag + "&nbsp;<span class='context'>&plusmn;" + chart.valFmt(contextData.numerator_errors[k], true) +"</span>";
                    //}
                } else {
                    compareBits = "<strong>" + chart.capitalize(k) + ":</strong> " + chart.valFmt(value);
                    
                    // add comparison MOE
                    //compareBits += "&nbsp;<span class='context'>&plusmn;" + chart.valFmt(contextData.error[k]) +"</span>";
                    // add comparison ABSOLUTE VALUE
                    //if (!!contextData.numerators[k]) {
                    //    compareBits += "<span class='push-right'>" + chart.valFmt(contextData.numerators[k], true) + moeFlag + "&nbsp;<span class='context'>&plusmn;" + chart.valFmt(contextData.numerator_errors[k], true) +"</span>";
                    //}
                }
                // add comparative text to the list
                cardComparison.push(
                    "<li>" + compareBits + "</span></li>"
                );
            }
        });
        
        var card = [
            "<h3>" + contextData.name + "</h3>",
            "<ul><li>" + cardStat + "</li></ul>",
            "<ul>" + cardComparison.join('') + "</ul>"
        ].join('');

        return card
    }
    
    chart.mouseover = function(data) {
        // ensure we have hovercard so other hover events can safely call this
        if (!!chart.hovercard) {
            chart.hovercard
                .html(chart.fillHovercard(data))
                .transition()
                .duration(200)
                .style("opacity", 1);
        }
    }

    chart.mousemove = function() {
        chart.hovercard
            .style("left", (d3.mouse(this)[0]) + "px")
            .style("bottom", (chart.settings.height - d3.mouse(this)[1] + 5) + "px");
    }

    chart.mouseout = function() {
        // ensure we have hovercard so other hover events can safely call this
        if (!!chart.hovercard) {
            chart.hovercard
                .transition()
                .duration(200)
                .style("opacity", 1e-6);
        }
    }

    chart.addChartTitle = function(container) {
        if (!!chart.chartChartTitle) {
            container.append("h3")
                .attr("class", "chart-title")
                .text(chart.chartChartTitle);
        }
    }
    
    chart.addChartQualifier = function(container) {
        if (!!chart.chartQualifier) {
            container.append("span")
                .classed("chart-qualifier", true)
                .text("* " + chart.chartQualifier)
        }
    }
    
    // format percentages and/or dollar signs
    chart.valFmt = function(value, disablePct) {
        if (!disablePct && (chart.chartStatType == 'percentage' || chart.chartStatType == 'scaled-percentage')) {
            value += '%';
        } else if (chart.chartStatType == 'dollar') {
            value = '$' + chart.commaFmt(value);
        } else {
            value = chart.commaFmt(value);
        }
        return value;
    }
    
    // commas for human-friendly integers
    chart.commaFmt = d3.format(",");
    
    chart.capitalize = function(string) {
        return string.charAt(0).toUpperCase() + string.slice(1);
    }
    
    chart.exclude = function(array, obj) {
        var i = array.length;
        while (i--) {
           if (array[i] === obj) {
               return false;
           }
        }
        return obj;
    }
    
    chart.lastItem = function(array) {
        return array[array.length - 1]
    }
    
    chart.findAncestor = function(node, match) {
      if (!node) {
          return null;
      } else if (!node.nodeType || typeof(match) != 'string') {
          return node;
      }
      
      if ((match = match.split('.')).length === 1) {
          match.push(null);
      } else if(!match[0]) {
          match[0] = null;
      }

      do {
        if ((!match[0] || match[0].toLowerCase() == node.nodeName.toLowerCase()) && (!match[1] || new RegExp('( |^)(' + match[1] + ')( |$)').test(node.className))) {
          break;
        }
      }
      while(node = node.parentNode);
 
      return node;
    }
    
    chart.sortDataBy = function(field, sortFunc) {
        // allow reverse sorts, e.g. '-value'
        var sortOrder = (field[0] === "-") ? -1 : 1;
        if (sortOrder == -1) {
            field = field.substr(1);
        }
        
        // allow passing in a sort function
        var key = sortFunc ? function (x) { return sortFunc(x[field]); } : function (x) { return x[field]; };

        return function (a,b) {
            var A = key(a), B = key(b);
            return ((A < B) ? -1 : (A > B) ? +1 : 0) * sortOrder;
        }
    }
    
    chart.getParentHeight = function() {
        return parseInt(d3.select(chart.chartContainer.node().parentNode).style('height'), 10);
    }
    
    chart.updateSettings = function(newSettings) {
        for (var setting in newSettings) {
            chart.settings[setting] = newSettings[setting]
        }
    }
    
    // Colorbrewer color specifications and designs
    // by Cynthia Brewer (http://colorbrewer.org/)
    // https://github.com/mbostock/d3/tree/master/lib/colorbrewer
    chart.colorbrewer = {
        Set2: ['#66c2a5', '#fc8d62', '#8da0cb', '#e78ac3', '#a6d854', '#ffd92f', '#e5c494', '#b3b3b3'],
        // saturated version of Colorbrewer 'Set2' scheme, so the unhovered
        // state, at 80% opacity, looks like the original colorbrewer color
        Set2S: ['#33b5b5', '#ed8b69', '#6295cc', '#dd85c0', '#8ecc23', '#fccd06', '#dbba97', '#aaaaaa']
        
    };
    
    chart.comparisonPhrases = {
        206: ["more than double", ""],
        195: ["about double", ""],
        180: ["nearly double", ""],
        161: ["more than 1.5 times", ""],
        145: ["about 1.5 times", ""],
        135: ["about 1.4 times", ""],
        128: ["about 1.3 times", ""],
        122: ["about 25 percent higher", "than"],
        115: ["about 20 percent higher", "than"],
        107: ["about 10 percent higher", "than"],
        103: ["a little higher", "than"],
        98: ["about the same as", ""],
        94: ["a little less", "than"],
        86: ["about 90 percent", "of"],
        78: ["about 80 percent", "of"],
        72: ["about three-quarters", "of"],
        64: ["about two-thirds", "of"],
        56: ["about three-fifths", "of"],
        45: ["about half", ""],
        37: ["about two-fifths", "of"],
        30: ["about one-third", "of"],
        23: ["about one-quarter", "of"],
        17: ["about two-fifths", "of"],
        13: ["less than two-fifths", "of"],
        8: ["about 10 percent", "of"],
        0: ["less than 10 percent", "of"],
    }
    
    chart.comparisonThresholds = d3.keys(chart.comparisonPhrases).map(Number);
    
    chart.getComparisonThreshold = function(value) {
        var threshold = chart.lastItem(chart.comparisonThresholds.filter(function(i) {
            return i <= value
        }));
        
        return chart.comparisonPhrases[threshold]
    }
    
    chart.getComparisonNoun = function() {
        if (chart.chartStatType == 'percentage' || chart.chartStatType == 'scaled-percentage') {
            return 'rate';
        } else if (chart.chartStatType == 'dollar') {
            return 'amount';
        }
        return 'figure';
    }
    

    // ready, set, go
    chart.init(options);
    return chart;
}
