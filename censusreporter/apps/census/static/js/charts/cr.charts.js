function Chart(options) {
    var chart = {};
    
    chart.init = function(options) {
        chart.chartIndex = options.chartIndex;
        chart.chartContainer = d3.select('#'+options.chartContainer);
        chart.chartType = options.chartType;
        chart.chartStatType = options.chartStatType;
        chart.chartDataValues = d3.values(options.chartData).map(function(d) {
            return {
                name: d.name,
                value: +d.values.this
            }
        });
        chart.settings = {
            width: parseInt(chart.chartContainer.style('width'), 10),
        }

        chart.draw();
        return chart;
    };
    
    chart.draw = function() {
        if (chart.chartType == 'pie') {
            chart.makePieChart();
        }
        return chart;
    }
    
    chart.updateSettings = function(newSettings) {
        for (var setting in newSettings) {
            chart.settings[setting] = newSettings[setting]
        }
    }
    
    chart.makePieChart = function() {
        chart.updateSettings({
            height: 180,
            legendOffset: 50
        });
        
        chart.settings.radius = (Math.min(chart.settings.width, chart.settings.height) / 1.5);

        chart.chartCategories = d3.values(options.chartData).map(function(d) {
            return d.name
        });

        chart.color = d3.scale.ordinal()
            .domain(chart.chartCategories)
            .range(chart.colorbrewer.Set2);
        
        chart.arc = d3.svg.arc()
            .outerRadius(chart.settings.radius - 40)
            .innerRadius(chart.settings.radius / 2.5);

        chart.pie = d3.layout.pie()
            .sort(null)
            .value(function(d) { return d['value']; });
            
        chart.pieData = chart.pie(chart.chartDataValues);

        chart.svg = chart.chartContainer.append("svg")
            .attr("class", "svg-chart")
            .attr("width", chart.settings.width)
            .attr("height", chart.settings.height);

        // arcs
        chart.arcGroup = chart.svg.append("g")
            .attr("class", "arc-group")
            .attr("transform", "translate(" + ((chart.settings.width / 2) - chart.settings.legendOffset) + "," + chart.settings.height / 2 + ")");

        // center text
        chart.centerGroup = chart.svg.append("g")
            .attr("class", "center-group")
            .attr("transform", "translate(" + ((chart.settings.width / 2) - chart.settings.legendOffset) + "," + chart.settings.height / 2 + ")");

        // center label
        chart.centerLabel = chart.centerGroup.append("text")
            .attr("class", "label-name")
            .attr("dy", -8)
            .attr("text-anchor", "middle");
            //.text(chart.pieData[0]['data']['name']);

        // center value
        chart.centerValue = chart.centerGroup.append("text")
            .attr("class", "label-value")
            .attr("dy", 14)
            .attr("text-anchor", "middle");
            //.text(function() {
            //    return chart.pctFmt(chart.pieData[0]['data']['value']);
            //});

        chart.arcHover = function(data) {
            chart.arcs
                .filter(function(d) {
                    return d == data;
                })
                .classed("hovered", true);
            chart.legendItems
                .filter(function(d) {
                    return d == data;
                })
                .classed("hovered", true);
            
            chart.centerLabel.text(data['data']['name']);
            chart.centerValue.text(function() {
                return chart.pctFmt(data['data']['value']);
            });
        }

        chart.arcReset = function() {
            chart.arcs
                .classed("hovered", false);
            chart.legendItems
                .classed("hovered", false);

            chart.centerLabel.text("");
            chart.centerValue.text("");
        }

        // add arc paths
        chart.arcs = chart.arcGroup.selectAll(".arc")
                .data(chart.pieData)
            .enter().append("path")
                .classed("arc", true)
                .attr("d", chart.arc)
                .style("fill", function(d) { return chart.color(d.data['name']); });
                
        chart.arcs.on("mouseover", chart.arcHover)
            .on("mouseout", chart.arcReset);

        
        // add legend
        chart.legend = chart.svg.append("g")
                .attr("class", "legend");

        chart.legendItems = chart.legend.selectAll('g')
                .data(chart.pieData)
            .enter().append('g')
                .attr("class", "legend-item")
                .each(function(d, i) {
                    var g = d3.select(this);
                        g.append("rect")
                            .attr("x", chart.settings.width - 100)
                            .attr("y", i*18 + 30)
                            .attr("width", 10)
                            .attr("height", 10)
                            .style("fill", function(d) { return chart.color(d.data['name']); });

                        g.append("text")
                            .attr("x", chart.settings.width - 85)
                            .attr("y", i*18 + 39)
                            .attr("height",30)
                            .attr("width",100)
                            .text(d.data['name']);
                });

        chart.legendItems.on("mouseover", chart.arcHover)
            .on("mouseout", chart.arcReset);

            
        return chart;
    }
    
    chart.pctFmt = function(value) {
        if (chart.chartStatType == 'percentage') { value += '%' }
        return value;
    }
    
    // Colorbrewer color specifications and designs
    // developed by Cynthia Brewer (http://colorbrewer.org/)
    // https://github.com/mbostock/d3/tree/master/lib/colorbrewer
    chart.colorbrewer = {
        Greens: {
            2: ["#e5f5e0","#a1d99b"],
            3: ["#e5f5e0","#a1d99b","#31a354"],
            4: ["#edf8e9","#bae4b3","#74c476","#238b45"],
            5: ["#edf8e9","#bae4b3","#74c476","#31a354","#006d2c"],
            6: ["#edf8e9","#c7e9c0","#a1d99b","#74c476","#31a354","#006d2c"],
            7: ["#edf8e9","#c7e9c0","#a1d99b","#74c476","#41ab5d","#238b45","#005a32"],
            8: ["#f7fcf5","#e5f5e0","#c7e9c0","#a1d99b","#74c476","#41ab5d","#238b45","#005a32"],
            9: ["#f7fcf5","#e5f5e0","#c7e9c0","#a1d99b","#74c476","#41ab5d","#238b45","#006d2c","#00441b"]
        },
        RdBu: {
            2: ["#f7f7f7","#67a9cf"],
            3: ["#ef8a62","#f7f7f7","#67a9cf"],
            4: ["#ca0020","#f4a582","#92c5de","#0571b0"],
            5: ["#ca0020","#f4a582","#f7f7f7","#92c5de","#0571b0"],
            6: ["#b2182b","#ef8a62","#fddbc7","#d1e5f0","#67a9cf","#2166ac"],
            7: ["#b2182b","#ef8a62","#fddbc7","#f7f7f7","#d1e5f0","#67a9cf","#2166ac"],
            8: ["#b2182b","#d6604d","#f4a582","#fddbc7","#d1e5f0","#92c5de","#4393c3","#2166ac"],
            9: ["#b2182b","#d6604d","#f4a582","#fddbc7","#f7f7f7","#d1e5f0","#92c5de","#4393c3","#2166ac"],
            10: ["#67001f","#b2182b","#d6604d","#f4a582","#fddbc7","#d1e5f0","#92c5de","#4393c3","#2166ac","#053061"],
            11: ["#67001f","#b2182b","#d6604d","#f4a582","#fddbc7","#f7f7f7","#d1e5f0","#92c5de","#4393c3","#2166ac","#053061"]
        },
        Set1: ['#e41a1c', '#377eb8', '#4daf4a', '#984ea3', '#ff7f00', '#ffff33', '#a65628', '#f781bf', '#999999'],
        Set2: ['#66c2a5', '#fc8d62', '#8da0cb', '#e78ac3', '#a6d854', '#ffd92f', '#e5c494', '#b3b3b3'],
        Set3: ['#8dd3c7', '#ffffb3', '#bebada', '#fb8072', '#80b1d3', '#fdb462', '#b3de69', '#fccde5', '#d9d9d9', '#bc80bd', '#ccebc5', '#ffed6f'],
        Accent: ['#7fc97f', '#beaed4', '#fdc086', '#ffff99', '#386cb0', '#f0027f', '#bf5b17', '#666666']
    };

    chart.init(options);
    return chart;
}
