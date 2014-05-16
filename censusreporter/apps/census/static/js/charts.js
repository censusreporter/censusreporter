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
        
        chart.screenPosition = chart.chartContainer.node().getBoundingClientRect();
        chart.parentHeight = chart.getParentHeight();
        chart.chartType = options.chartType;
        chart.chartDataKey = options.chartDataKey;
        chart.chartChartTitle = options.chartChartTitle || null;
        chart.chartQualifier = options.chartQualifier || null;
        chart.chartInitialSort = options.chartInitialSort || null;
        chart.chartStatType = options.chartStatType || 'number';
        chart.chartChartShowYAxis = options.chartChartShowYAxis || (chart.chartStatType == "percentage" ? true : false);
        chart.chartHeight = options.chartHeight || (chart.parentHeight < 180 ? 180 : chart.parentHeight);
        chart.chartColorScale = options.chartColorScale || 'Set2S';
        chart.screenPosition = document.getElementById(options.chartContainer).getBoundingClientRect();

        // add a bit of geodata for links and hovercards
        var geographyThis = options.geographyData['this'],
            geographyParents = options.geographyData.parents;

        chart.comparisonNames = {
            'this': (!!geographyThis) ? geographyThis.short_name : 'here',
            'province': (!!geographyParents.province) ? geographyParents.province.short_name : 'province',
            'country': (!!geographyParents.country) ? geographyParents.country.short_name : 'South Africa'
        }
        chart.comparisonNamePhrases = {
            'this': (!!geographyThis) ? 'in ' + geographyThis.short_name : 'here',
            'province': (!!geographyParents.province) ? geographyParents.province.short_name : 'provincewide',
            'country': (!!geographyParents.country) ? geographyParents.country.short_name : 'countrywide'
        }
        
        chart.primaryGeoID = geographyThis.full_geoid;
        chart.geoIDs = [geographyThis.full_geoid];
        d3.values(geographyParents).forEach(function(g) {
            chart.geoIDs.push(g.full_geoid)
        });

        var dataObj,
            metadataFields = ['metadata', 'acs_release'];
        
        // filter out metadata objects before we prep data for chart
        chart.chartDataValues = d3.map(options.chartData);
        metadataFields.forEach(function(v) {
            chart.chartDataValues.remove(v)
        });

        // keep the initial data for possible display later
        chart.initialData = options.chartData;
        
        chart.chartDataValues = d3.values(chart.chartDataValues).filter(function(n){return typeof(n) != 'function'}).map(function(d) {
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
                            value: +d[v].values['this'],
                            context: d[v]
                        })
                    })
            } else {
                // otherwise, just grab the name and value of the data point
                dataObj = {
                    name: d.name,
                    value: +d.values['this'],
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
        chart.dimensions = {
        	height: chart.chartContainer.node().offsetHeight,
        	width: chart.chartContainer.node().offsetWidth
        }
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
                                .html(function(d) {
                                    return chart.getValueFmt(v);
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
                    .html(function(d) {
                        return chart.getValueFmt(d);
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
        
        // listen for interactions
        chart.bars = chart.htmlBase.selectAll(".bar")
            .on("click", chart.cardToggle)
            .on("mouseover", chart.mouseover)
            .on("mouseout", chart.mouseout);
            
        chart.chartContainer
            .on("mousemove", chart.mousemove);
        
        if (!!chart.chartQualifier) {
            chart.addChartQualifier(chart.chartContainer);
        }
        chart.addActionLinks();

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

        // add optional title, adjust height available height for columns if necessary
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
            
            // a little extra tick padding for dual labels
            chart.settings.tickPadding += 5;

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
                            .style("top", function(d) { return (chart.settings.displayHeight + 51) + "px"; })
                            .style("left", function(d) { return (chart.x(d.name) + chart.settings.margin.left) + "px"; })
                            .text(function(d) { return chart.capitalize(d.name); });
                            
                        groupValues.forEach(function(v, i) {
                            column = g.append("a").attr("class", "column")
                                .style("width", columnWidth + "px")
                                .style("bottom", function(d) { return (chart.settings.margin.bottom + chart.settings.tickPadding) + "px"; })
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
                                .style("top", function(d) {
                                    return (chart.settings.displayHeight + 5) + "px";
                                })
                                .text(function(d) { return chart.capitalize(v.name); });
                                
                            column.append("span")
                                .classed("label", true)
                                .style("bottom", function(d) {
                                    return (chart.settings.displayHeight - chart.y(d.value) + 3) + "px";
                                })
                                .html(function(d) {
                                    return chart.getValueFmt(v);
                                });
                            });
                        });
                        
            // now that we've created all the columns in their groups,
            // select them for interaction handling
            chart.columns = chart.htmlBase.selectAll(".column");
        } else {
            chart.columns = chart.htmlBase.selectAll(".column")
                    .data(chart.chartDataValues)
                .enter().append("a")
                    .attr("class", "column")
                    .style("width", chart.x.rangeBand() + "px")
                    .style("bottom", function(d) { return (chart.settings.margin.bottom + chart.settings.tickPadding) + "px"; })
                    .style("left", function(d) { return (chart.x(d.name) + chart.settings.margin.left) + "px"; })
                    .style("height", function(d) { return (chart.settings.displayHeight) + "px"; });
                    
            chart.columnAreas = chart.columns
                .append("span")
                    .attr("class", "area")
                    .style("position", "absolute")
                    .style("background-color", chart.colorbrewer[chart.chartColorScale][0])
                    .style("width", chart.x.rangeBand() + "px")
                    .style("bottom", function(d) { return (chart.settings.margin.bottom + chart.settings.tickPadding) + "px"; })
                    .style("height", function(d) { return (chart.settings.displayHeight - chart.y(d.value)) + "px"; });

            chart.columnNames = chart.columns
                .append("span")
                    .classed("x axis label", true)
                    .style("top", function(d) {
                        return (chart.settings.displayHeight - 10) + "px";
                    })
                    .text(function(d) { return d.name; });

            chart.labels = chart.columnAreas
                .append("span")
                    .classed("label", true)
                    .style("bottom", function(d) {
                        return (chart.settings.displayHeight - chart.y(d.value) + 3) + "px";
                    })
                    .html(function(d) {
                        return chart.getValueFmt(d);
                    });
        }

        // listen for column interactions
        chart.columns
            .on("click", chart.cardToggle)
            .on("mouseover", chart.mouseover)
            .on("mouseout", chart.mouseout);
            
        chart.chartContainer
            .on("mousemove", chart.mousemove);

        if (!!chart.chartQualifier) {
            chart.addChartQualifier(chart.chartContainer);
        }
        chart.addActionLinks();

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
            radius: (Math.min(chart.settings.pieWidth, chart.settings.displayHeight) / 2.1),
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
            .style("height", (chart.settings.displayHeight - 4) + "px");

        // center text group
        chart.centerGroup = chart.htmlBase.append("div")
            .attr("class", "center-group")
            .style("position", "relative")
            .style("width", "0")
            .style("height", chart.settings.displayHeight + "px");

        // center label
        chart.centerLabel = chart.centerGroup.append("span")
            .attr("class", "label-name")
            .style("left", (chart.settings.pieCenter - ((chart.settings.radius / 1.5) * .95)) + "px")
            .style("bottom", ((chart.settings.displayHeight / 2) + chart.settings.margin.top + 10) + "px")
            .style("width", ((chart.settings.radius / 1.5) * 1.9) + "px");

        // center value
        chart.centerValue = chart.centerGroup.append("span")
            .attr("class", "label-value")
            .style("left", (chart.settings.pieCenter - ((chart.settings.radius / 1.5) * .95)) + "px")
            .style("top", ((chart.settings.displayHeight / 2) + chart.settings.margin.top - 7) + "px")
            .style("width", ((chart.settings.radius / 1.5) * 1.9) + "px");

        // interaction state highlights the arc and associated legend item,
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
            chart.centerValue.html(chart.getValueFmt(data.data));
            
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
            chart.centerValue.html(chart.getValueFmt(chart.initialSlice.data));
            
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
                .attr("class", "legend legend-full-width clearfix");
                
            chart.updateSettings({
                height: parseInt(chart.settings.height) + 50
            });
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

        // listen for arc interactions
        chart.arcs
            .on("click", chart.cardToggle)
            .on("mouseover", chart.arcHover)
            .on("mouseout", chart.arcReset);
        
        // listen for legend interactions
        chart.legendItems
            .on("click", chart.cardToggle)
            .on("mouseover", chart.arcHover)
            .on("mouseout", chart.arcReset);

        chart.chartContainer
            .on("mousemove", chart.mousemove);


        // add any explanatory lines
        if (!!chart.chartQualifier) {
            chart.addChartQualifier(chart.chartContainer);
        }
        chart.addActionLinks();

        return chart;
    }
    
    chart.addActionLinks = function() {
        chart.actionLinks = chart.chartContainer
            .append("div")
            .classed("action-links", true);
            
        chart.getData = chart.actionLinks
            .append("a")
                .classed("chart-get-data", true)
                .text("Show data")
                .on("click", chart.toggleDataDrawer);

        chart.actionLinks.append("span").text("/");

        chart.showEmbed = chart.actionLinks
            .append("a")
                .classed("chart-show-embed", true)
                .text("Embed")
                .on("click", chart.showEmbedCode);

        chart.actionLinks.append("span").text("/");

        chart.actionLinks
            .append("a")
                .classed("chart-share", true)
                .text("Share")
                .on("click", chart.showShare);
    }
    
    chart.fillEmbedCode = function(textarea, align) {
        var embedHeight = 300,
            embedWidth = (chart.chartType == 'pie') ? 300 : 720,
            embedKey = chart.chartDataKey.substring(chart.chartDataKey.indexOf('-')+1),
            embedID = 'cr-embed-'+chart.primaryGeoID+'-'+embedKey,
            embedParams = {
                geoID: chart.primaryGeoID,
                chartDataID: embedKey,
                chartType: chart.chartType,
                chartHeight: 200,
                chartQualifier: (chart.chartQualifier || ''),
                chartTitle: (chart.chartChartTitle || ''),
                initialSort: (chart.chartInitialSort || ''),
                statType: (chart.chartStatType || '')
            };
            embedAlign = (align == 'left' || align == 'right') ? ' float: ' + align + ';' : '';
        
        var querystring = $.param(embedParams);
        
        var embedCode = [
            '<iframe id="'+embedID+'" class="census-reporter-embed" src="http://embed.wazimap.co.za/static/iframe.html?'+querystring+'" frameborder="0" width="100%" height="300" style="margin: 1em; max-width: '+embedWidth+'px;' + embedAlign + '"></iframe>',
            '\n<script src="http://embed.wazimap.co.za/static/js/embed.chart.make.js"></script>'
        ].join('');
        
        textarea.html(embedCode);
    }

    chart.showEmbedCode = function() {
        var lightboxWrapper = d3.select('body').append('div')
                .attr('id', 'lightbox');
                
        var lightbox = lightboxWrapper.append('div')
                .classed('hovercard-wrapper', true)
            .append('div')
                .classed('hovercard', true);

        lightbox.append('small')
                .classed('close clearfix', true)
                .html('<i class="fa fa-times-circle"></i> Close')
                .on('click', function() {
                    d3.event.stopPropagation();
                    d3.select('#lightbox').remove();
                });
                
        lightbox.append('h2')
                .html('Embed code for this chart');

        lightbox.append('p')
                .text('Copy the code below, then paste into your own CMS or HTML. Embedded charts are responsive to your page width, and have been tested in Firefox, Safari, Chrome, and IE8 and above.');
                
        var textarea = lightbox.append('textarea')
                .on('click', function() {
                    this.select();
                });

        lightbox.append('p')
                .classed('filter-list display-type', true)
                .html('<strong>Align this embedded chart in text:</strong> ')
            .selectAll('a')
                .data(['Normal', 'Left', 'Right'])
            .enter().append('a')
                .attr('id', function(d) { return 'embed-align-' + d.toLowerCase() })
                .text(function(d) { return d })
                .on('click', function() {
                    d3.event.stopPropagation();
                    d3.selectAll('.filter-list a').classed('option-selected', false);
                    d3.select(this).classed('option-selected', true);
                    chart.fillEmbedCode(textarea, this.text.toLowerCase())
                });
                
        d3.select('#embed-align-normal')
            .classed('option-selected', true);

//        lightbox.append('p').append('a')
//                .classed('display-type', true)
//                .attr('href', '/examples/embed-charts/')
//                .attr('target', '_blank')
//                .html('Learn more about Wazi&rsquo;s embedded charts');
                
        chart.fillEmbedCode(textarea);
    }

    chart.showShare = function() {
        var row = d3.select(chart.findAncestor(this, "section"))
        var base_url = window.location.origin + window.location.pathname
        var chart_url = base_url + row.select(".permalink").attr("href")
        var page_heading = d3.select("#header-box .title").text()
        var new_title = page_heading + " - " + chart.chartChartTitle;

        var lightboxWrapper = d3.select('body').append('div')
                .attr('id', 'lightbox');

        var lightbox = lightboxWrapper.append('div')
                .classed('hovercard-wrapper', true)
            .append('div')
                .classed('hovercard', true);

        lightbox.append('small')
                .classed('close clearfix', true)
                .html('<i class="fa fa-times-circle"></i> Close')
                .on('click', function() {
                    d3.event.stopPropagation();
                    d3.select('#lightbox').remove();
                    addthis.update('share', 'url', base_url);
                    addthis.update('share', 'title', document.title);
                    addthis.url = base_url;
                    addthis.title = document.title;
                    addthis.toolbox('.addthis_toolbox');
                });

        lightbox.append('h2')
                .html('Share this chart');

        lightbox.append('h3')
            .html(new_title);

        lightbox.append('p')
            .html("Share by clicking one of the buttons below.");

        lightbox.append('div')
                .classed('share-this-chart', true)
                .style('text-align', 'center')
                .append('div')
                    .classed('addthis_toolbox addthis_default_style addthis_32x32_style', true)
                    .style('width', '120px')
                    .style('margin', '0 auto')
                    .each(function(d) {
                        d3.select(this).append('a')
                            .classed('addthis_button_facebook', true)
                        d3.select(this).append('a')
                            .classed('addthis_button_twitter', true)
                        d3.select(this).append('a')
                            .classed('addthis_button_gmail', true);
                    });

        // re-run the addThis script to enable the newly created sharing buttons
        addthis.update('share', 'url', chart_url);
        addthis.update('share', 'title', new_title);
        addthis.url = chart_url;
        addthis.title = new_title;
        addthis.toolbox('.addthis_toolbox');
        // add the plain URL as fallback
        lightbox.append('p')
            .html("Or copy this URL:<br>&nbsp&nbsp&nbsp&nbsp" + chart_url);
    }
    
    // pass in data obj, get back formatted value label with MOE flag
    chart.getValueFmt = function(data, geoStr, precision) {
        var place = (!!geoStr) ? geoStr : 'this',
            decimals = (!!precision) ? precision : 0,
            valueText = data.context.values[place],
            valueMOEFlag = data.context.error_ratio[place] >= 10 ? "<sup>&dagger;</sup>" : "";
        return chart.valFmt(valueText, decimals) + valueMOEFlag;
    }
    
    // opens drawer with tabular data under chart
    chart.toggleDataDrawer = function() {
        var row = d3.select(chart.findAncestor(this, "section")),
            clickTargets = row.selectAll(".chart-get-data"),
            clicked = d3.select(this),
            hide = clicked.classed("opened"),
            tableID = chart.capitalize(chart.initialData.metadata.table_id),
            tableURL = '/data/table/?table='+tableID+'&primary_geo_id='+chart.primaryGeoID+'&geo_ids='+chart.geoIDs.join(',');
        chart.dataDrawer = row.select(".data-drawer");
        
        // make sure we're in a pristine state
        chart.dataDrawer.remove();
        clickTargets.text('Show data').classed("opened", false);
        
        // handle the toggling
        if (hide) {
            clicked.classed("opened", false);
        } else {
            clicked.classed("opened", true);
            clicked.text('Hide data');
            
            // tell Google Analytics about the event
            chart.trackEvent('Charts', 'Show data', tableID);
            
            chart.dataDrawer = row.append("div")
                    .attr("class", "data-drawer column-full");
                    
            chart.dataDrawer.append("h3")
                    .attr("class", "chart-title")
                    .html(function() {
                        var titleText;
                        if (!!chart.chartChartTitle) {
                            titleText = chart.chartChartTitle; // + " (Table " + tableID + ")";
                        } else {
                            titleText = "Table " + tableID;
                        }
                        return titleText; // + " <a class='smaller push-right' href='" + tableURL + "'>View table</a>"
                    });

            chart.dataTable = chart.dataDrawer.append("table")
                    .attr("id", "data-table")
                    .attr("class", "full-width");
                    
            // get chart data ready for tabular format
            var rowValues = []
            chart.chartDataValues.forEach(function(d, i){
                if (!!d.context) {
                    // standard chart
                    rowValues.push(d);
                } else {
                    // data shaped for grouped chart
                    d.values.forEach(function(k, i) {
                        k.name = d.name + ': ' + chart.capitalize(k.name);
                        rowValues.push(k);
                    })
                }
            })

            chart.dataTableHeader = chart.dataTable.append("thead")
                .append("tr")
                .call(chart.fillDataDrawerHeader, rowValues[0]);

            chart.tableRows = chart.dataTable.append("tbody")
                .call(chart.fillDataDrawerRows, rowValues);

            chart.dataDrawer
                .append("a")
                    .classed("chart-get-data opened", true)
                    .text("Hide data")
                    .on("click", chart.toggleDataDrawer);
        }
    }
    
    chart.DataDrawerPlaces = ['this', 'province', 'country'];
    
    chart.fillDataDrawerHeader = function(selection, d) {
        var headerData = [
            { colspan: 1, cellClass: 'name', cellContents: 'Column' }
        ];

        _.each(d.context.values, function(v, k) {
            headerData.push({
                colspan: 2, //(d.context.numerators[k] !== null) ? 4 : 2,
                cellClass: 'name',
                cellContents: chart.comparisonNames[k]
            });
        })

        selection.selectAll("th")
                .data(headerData)
            .enter().append("th")
                .attr("class", function(d) { return d.cellClass })
                .attr("colspan", function(d) { return d.colspan })
                .text(function(d) { return d.cellContents });
    }
    
    chart.fillDataDrawerRows = function(selection, rowValues) {
        rowValues.forEach(function(d) {
            rowData = [
                { cellClass: 'name', cellContents: d.name }
            ];
            _.each(d.context.values, function(v, k) {
                // add the primary value
                rowData.push({ cellClass: 'value', cellContents: chart.getValueFmt(d, k, 1) });
                // rowData.push({ cellClass: 'context', cellContents: '&plusmn;' + chart.valFmt(d.context.error[k], 1) });
                // add the numerator value if it exists
                if (d.context.numerators[k] !== null) {
                    rowData.push({ cellClass: 'value', cellContents: chart.commaFmt(d.context.numerators[k]) });
                    //rowData.push({ cellClass: 'context', cellContents: '&plusmn;' + chart.commaFmt(d.context.numerator_errors[k]) });
                }
            })
            
            selection.append("tr").selectAll("td")
                    .data(rowData)
                .enter().append("td")
                    .attr("class", function(d) { return d.cellClass })
                    .html(function(d) { return d.cellContents });
        })
    }
    
    chart.initHovercard = function() {
        chart.hovercard = chart.chartContainer.append("div")
            .attr("class", "hovercard")
            .style("width", function() {
                return (browserWidth > 480) ? "200px" : "110%";
            })
            .style("opacity", 1e-6)
            .on("click", function() {
                d3.event.stopPropagation();
                chart.mouseout();
            });

        chart.hovercard.dimensions = {
            height: 0,
            width: 0
        };
    }
    
    chart.cardToggle = function(data) {
        var cardData = (chart.chartType == 'pie') ? data.data : data;
        if (!!chart.hovercard) {
            if (chart.hovercard.style("opacity") == 1 && comparison.clicked == d) {
                chart.mouseout();
            } else {
                chart.mouseover(cardData);
                comparison.clicked = d;
            }
        }
    }
    
    chart.fillHovercard = function(data) {
        var value,
            index,
            phraseBits,
            compareBits,
            contextData = data.context,
            moeFlag = contextData.error_ratio['this'] >= 10 ? "<sup>&dagger;</sup>" : "",
            cardStat = chart.valFmt(contextData.values['this']) + moeFlag,
            cardComparison = [];

        d3.keys(contextData.values).forEach(function(k, i) {
            if (k != 'this') {
                value = contextData.values[k];
                index = contextData.index[k];
                moeFlag = contextData.error_ratio[k] >= 10 ? "<sup>&dagger;</sup>" : "";
                
                // generate the comparative text for this parent level
                if (!!index) {
                    phraseBits = chart.getComparisonThreshold(index);
                    compareBits = "<strong>" + phraseBits[0] + "</strong> " + phraseBits[1] + " the " + chart.getComparisonNoun() + " " + chart.comparisonNamePhrases[k] + ": " + chart.valFmt(value) + moeFlag;
                } else {
                    compareBits = "<strong>" + chart.capitalize(k) + ":</strong> " + chart.valFmt(value) + moeFlag;
                }
                // add comparative text to the list
                cardComparison.push(
                    "<li>" + compareBits + "</span></li>"
                );
            }
        });
        
        var card = [
            "<h3>" + contextData.name + ": <span class='normal'>" + cardStat + "</span></h3>",
            "<ul>" + cardComparison.join('') + "</ul>"
        ].join('');
        
        
        var maxMOE = d3.values(contextData.error_ratio);
        // if any MOEs get daggered, show the explanatory text
        maxMOE.sort(function(x, y) { return y - x });
        if (maxMOE[0] >= 10) {
            card += "<div class='note'><sup>&dagger;</sup> Margin of error at least 10 percent of total value</div>"
        }

        return card
    }
    
    chart.mouseover = function(data) {
        // reset screen position to account for scrolling
        chart.screenPosition = chart.chartContainer.node().getBoundingClientRect();

        // ensure we have hovercard so other interactions can safely call this
        if (!!chart.hovercard) {
            chart.hovercard
                .html(chart.fillHovercard(data))
                .style("opacity", 1);

            chart.hovercard.dimensions = {
                height: chart.hovercard.node().offsetHeight,
                width: chart.hovercard.node().offsetWidth
            }
        }
    }

    chart.mousemove = function() {
        var mouseTop = d3.mouse(this)[1],
            mouseLeft = d3.mouse(this)[0],
            bufferTop = chart.screenPosition.top + mouseTop - chart.hovercard.dimensions.height - 10,
            bufferRight = browserWidth - (chart.screenPosition.left + mouseLeft + chart.hovercard.dimensions.width) - 10;

        chart.hovercard.position = {
            vertical: {
                direction: (bufferTop < 10) ? 'top' : 'bottom',
                pixels: (bufferTop < 10) ? mouseTop + 5 : chart.dimensions.height - mouseTop + 5
            },
            horizontal: {
                direction: (bufferRight < 10) ? 'right' : 'left',
                pixels: (bufferRight < 10) ? chart.dimensions.width - mouseLeft + 5 : mouseLeft + 5
            }
        }
        // asking for chart.hovercard.style("height") and chart.hovercard.style("width")
        // gives inconsistent results because of IE box model. So we can't count on addition
        // using hovercard height and width. Instead, we reset top/bottom and left/right
        // (in case of flips, we don't want to hold onto the old value) and position based
        // on proximity to screen edge.
        chart.hovercard
            .style("left", "auto").style("right", "auto")
            .style(chart.hovercard.position.horizontal.direction, (chart.hovercard.position.horizontal.pixels) + "px")
            .style("top", "auto").style("bottom", "auto")
            .style(chart.hovercard.position.vertical.direction, (chart.hovercard.position.vertical.pixels) + "px");
    }

    chart.mouseout = function() {
        // ensure we have hovercard so other interactions can safely call this
        if (!!chart.hovercard) {
            chart.hovercard
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
                .text("* " + chart.chartQualifier);

            chart.updateSettings({
                height: parseInt(chart.settings.height) + 20
            });
        }
    }
    
    // format percentages and/or dollar signs
    chart.valFmt = function(value, decimals) {
        var precision = (!!decimals) ? decimals : 0,
            factor = Math.pow(10, precision),
            value = Math.round(value * factor) / factor;

        if (chart.chartStatType == 'percentage' || chart.chartStatType == 'scaled-percentage') {
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
        17: ["about one-fifth", "of"],
        13: ["less than a fifth", "of"],
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
    
    chart.trackEvent = function(category, action, label) {
        // make sure we have Google Analytics function available
        if (typeof(ga) == 'function') {
            ga('send', 'event', category, action, label);
        }
    }

    // ready, set, go
    chart.init(options);
    return chart;
}
