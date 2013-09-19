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
        chart.chartContainer = d3.select('#'+options.chartContainer);
        chart.parentHeight = chart.getParentHeight();
        chart.chartType = options.chartType;
        chart.chartChartTitle = options.chartChartTitle || null;
        chart.chartInitialSort = options.chartInitialSort || null;
        chart.chartStatType = options.chartStatType || 'number';
        chart.chartHeight = options.chartHeight || (chart.parentHeight < 180 ? 180 : chart.parentHeight);
        chart.chartColorScale = options.chartColorScale || 'Set2S';
        chart.chartDataValues = d3.values(options.chartData).map(function(d) {
            return {
                name: d.name,
                value: +d.values.this
            }
        });
        
        // set height on container div for continuity
        chart.chartContainer.style("height", chart.chartHeight + "px");
        chart.settings = {
            width: parseInt(chart.chartContainer.style('width'), 10) - parseInt(chart.chartContainer.style('margin-right'), 10),
            height: chart.chartHeight
        }

        // time to make the chart
        chart.draw();
        return chart;
    };
    
    chart.draw = function() {
        // hand off based on desired type of chart
        if (chart.chartType == 'pie') {
            chart.makePieChart();
        } else if (chart.chartType == 'column' || chart.chartType == 'histogram') {
            chart.makeColumnChart();
        }
        return chart;
    }

    chart.makeColumnChart = function() {
        chart.chartContainer
            .classed("column-chart", true);
        
        // add basic settings specific to this chart type
        chart.updateSettings({
            margin: { top: 20, right: 0, bottom: 30, left: 30 },
            tickPadding: 5,
            outerColumnPadding: .25
        });
        if (chart.chartType == 'histogram') {
            chart.updateSettings({
                columnPadding: .025
            });
        } else {
            chart.updateSettings({
                columnPadding: .2
            });
        }

        // primary svg container
        chart.baseContainer = chart.chartContainer.append("svg")
                .attr("class", "svg-chart")
                .attr("width", "100%")
                .attr("height", chart.settings.height);

        // add optional title, adjust height available height for arcs if necessary
        if (!!chart.chartChartTitle) {
            chart.addChartTitle(chart.baseContainer);
            chart.settings.margin.top += 13;
        }

        // base where columns and axes will be attached
        chart.base = chart.baseContainer.append("g")
                .attr("transform", "translate(" + chart.settings.margin.left + "," + chart.settings.margin.top + ")");
                
        chart.updateSettings({
            displayWidth: chart.settings.width - chart.settings.margin.left - chart.settings.margin.right,
            displayHeight: chart.settings.height - chart.settings.margin.top - chart.settings.margin.bottom
        });

        // x scale, axis and labels
        chart.x = d3.scale.ordinal()
            .rangeRoundBands([0, chart.settings.displayWidth], chart.settings.columnPadding, chart.settings.outerColumnPadding)
            .domain(chart.chartDataValues.map(function(d) { return d.name; }));

        chart.xAxisBase = chart.base.append("g")
            .attr("class", "x axis")
            .attr("transform", "translate(0," + (chart.settings.displayHeight + chart.settings.tickPadding) + ")");

        chart.xAxisLabels = chart.xAxisBase.selectAll("g")
                .data(chart.chartDataValues)
            .enter().append("g")
                    .classed("tick major", true)
                    .style("opacity", 1)
                    .attr("transform", function(d) {
                        return "translate(" + (chart.x(d.name) + (chart.x.rangeBand() / 2)) + ", 0)";
                    })
                .append("text")
                    .text(function(d) { return d.name; })
                    .attr("x", 0)
                    .attr("dy", ".71em")
                    .style("text-anchor", "middle");

        // y scale and axis, account for raw number vs. percentages
        if (chart.chartStatType == 'percentage') {
            var yDomain = [0, 100],
                yTickRange = d3.range(0, 101, 25);
        } else {
            var yValues = chart.chartDataValues.map(function(d) { return d.value; }),
                yDomain = [0, (d3.max(yValues) * 1.33)],
                yTickRange = d3.range(0, (d3.max(yValues) * 1.33), (d3.max(yValues) / 4));
        }
        chart.y = d3.scale.linear()
            .range([chart.settings.displayHeight, 0])
            .domain(yDomain);
            
        chart.yAxis = d3.svg.axis()
            .scale(chart.y)
            .orient("left")
            .tickSize(-chart.settings.displayWidth)
            .tickPadding(chart.settings.tickPadding)
            .tickValues(yTickRange);

        chart.yAxisBase = chart.base.append("g")
            .attr("class", "y axis")
            .call(chart.yAxis);
            
        // add columns as <a> elements
        chart.columnGroup = chart.chartContainer.append("div")
            .attr("class", "column-group");

        chart.columns = chart.columnGroup.selectAll(".column")
                .data(chart.chartDataValues)
            .enter().append("a")
                .attr("class", "column")
                .style("background-color", chart.colorbrewer[chart.chartColorScale][0])
                .style("width", chart.x.rangeBand() + "px")
                .style("bottom", function(d) { return (chart.settings.margin.bottom + chart.settings.tickPadding - 1) + "px"; })
                .style("left", function(d) { return (chart.x(d.name) + chart.settings.margin.left) + "px"; })
                .style("height", function(d) { return (chart.settings.displayHeight - chart.y(d.value)) + "px"; });

        // label columns with values
        chart.labelGroup = chart.base.append("g")
            .attr("class", "column-group");

        chart.labels = chart.labelGroup.selectAll("text")
                .data(chart.chartDataValues)
            .enter().append("text")
                .text(function(d) {
                    return chart.pctFmt(d.value);
                })
                .attr("text-anchor", "middle")
                .attr("x", function(d) { return chart.x(d.name) + (chart.x.rangeBand() / 2); })
                .attr("y", function(d) { return chart.y(d.value) - 8; });

        return chart;
    }

    chart.makePieChart = function() {
        chart.chartContainer
            .classed("pie-chart", true);
            
        // make sure chart has enough room for full display
        var legendWidth = (chart.settings.width * .38)
        chart.updateSettings({
            legendWidth: legendWidth,
            radius: (Math.min((chart.settings.width - legendWidth), chart.settings.height) / 1.5)
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
            .outerRadius(chart.settings.radius - 40)
            .innerRadius(chart.settings.radius / 2.3);

        // put this chart's data into D3 pie layout
        chart.pie = d3.layout.pie()
            .sort(null)
            .value(function(d) { return d.value; });
        chart.pieData = chart.pie(chart.chartDataValues);
        
        // get the max value for initial labeling
        if (!!chart.chartInitialSort) {
            chart.initialData = chart.pieData.slice(0).sort(chart.sortDataBy(chart.chartInitialSort))[0];
        } else {
            chart.initialData = chart.pieData[0];
        }
        
        // primary svg container
        chart.chartContainer.style("height", chart.settings.height + "px");
        chart.base = chart.chartContainer.append("svg")
            .attr("class", "svg-chart")
            .attr("width", "100%")
            .attr("height", chart.settings.height);
            
        // add optional title, adjust height available height for arcs if necessary
        if (!!chart.chartChartTitle) {
            chart.addChartTitle(chart.base);
            chart.settings.height += 20;
        }

        // group for arcs, to be added later
        chart.arcGroup = chart.base.append("g")
            .attr("class", "arc-group")
            .attr("transform", "translate(" + ((chart.settings.width - chart.settings.legendWidth) / 2) + "," + chart.settings.height / 2 + ")");

        // center text group
        chart.centerGroup = chart.base.append("g")
            .attr("class", "center-group")
            .attr("transform", "translate(" + ((chart.settings.width - chart.settings.legendWidth) / 2) + "," + chart.settings.height / 2 + ")");

        // center label
        chart.centerLabel = chart.centerGroup.append("text")
            .attr("class", "label-name")
            .attr("dy", -8)
            .attr("text-anchor", "middle");

        // center value
        chart.centerValue = chart.centerGroup.append("text")
            .attr("class", "label-value")
            .attr("dy", 14)
            .attr("text-anchor", "middle");

        // hover state highlights the arc and associated legend item,
        // and displays the data name and value in center of chart
        chart.arcHover = function(data) {
            chart.arcs
                .filter(function(d) {
                    return d == data;
                })
                .classed("hovered", true)
                .style("opacity", "1");
            chart.legendItems
                .filter(function(d) {
                    return d == data;
                })
                .classed("hovered", true)
                .style("opacity", "1");
            
            chart.centerLabel.text(data.data.name);
            chart.centerValue.text(function() {
                return chart.pctFmt(data.data.value);
            });
        }

        // return arc and associated legend item to normal styles
        chart.arcReset = function() {
            chart.arcs
                .classed("hovered", false)
                .style("opacity", "0.8");
            chart.legendItems
                    .classed("hovered", false)
                .selectAll("rect")
                    .style("opacity", "0.8");

            chart.centerLabel.text(chart.initialData.data.name);
            chart.centerValue.text(chart.pctFmt(chart.initialData.data.value));
        }

        // add arc paths to arc group
        chart.arcs = chart.arcGroup.selectAll(".arc")
                .data(chart.pieData)
            .enter().append("path")
                .classed("arc", true)
                .attr("d", chart.arc)
                .style("fill", function(d) { return chart.color(d.data.name); });
                
        // listen for arc hovers
        chart.arcs.on("mouseover", chart.arcHover)
            .on("mouseout", chart.arcReset);
        
        // add legend, legend items
        chart.legend = chart.base.append("g")
                .attr("class", "legend")
                .attr("transform", "translate(" + (chart.settings.width - chart.settings.legendWidth) + ",30)");

        chart.legendItems = chart.legend.selectAll('g')
                .data(chart.pieData)
            .enter().append('g')
                .attr("class", "legend-item")
                .each(function(d, i) {
                    var g = d3.select(this);
                        g.append("rect")
                            .attr("y", i*18)
                            .attr("width", 10)
                            .attr("height", 10)
                            .style("fill", function(d) { return chart.color(d.data.name); });

                        g.append("text")
                            .attr("x", 15)
                            .attr("y", i*18 + 9)
                            .attr("height",30)
                            .text(d.data.name);
                });
                
        // add initial center label
        chart.arcReset();
        
        // listen for legend hovers
        chart.legendItems.on("mouseover", chart.arcHover)
            .on("mouseout", chart.arcReset);
        
        return chart;
    }
    
    chart.addChartTitle = function(container) {
        if (!!chart.chartChartTitle) {
            container.append("text")
                .attr("class", "chart-title")
                .attr("x", 0)
                .attr("y", 12)
                .text(chart.chartChartTitle);
        }
    }
    
    // present percentages with % at the end
    chart.pctFmt = function(value) {
        if (chart.chartStatType == 'percentage' || chart.chartStatType == 'scaled-percentage') { value += '%' }
        return value;
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
        // state, at 80% opacity, looks like the original colorbrew color
        Set2S: ['#33b5b5', '#ed8b69', '#6295cc', '#dd85c0', '#8ecc23', '#fccd06', '#dbba97', '#aaaaaa']
        
    };

    // ready, set, go
    chart.init(options);
    return chart;
}
