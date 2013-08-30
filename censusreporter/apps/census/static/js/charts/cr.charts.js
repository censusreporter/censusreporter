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
            .range(chart.colorbrewer.Greens[9].reverse());
        
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
          .attr("dy", -10)
          .attr("text-anchor", "middle")
          .text(chart.pieData[0]['data']['name']);

        // center value
        chart.centerValue = chart.centerGroup.append("text")
          .attr("class", "label-value")
          .attr("dy", 12)
          .attr("text-anchor", "middle")
          .text(function() {
              return chart.pctFmt(chart.pieData[0]['data']['value']);
          });

        // add arc paths
        chart.arcs = chart.arcGroup.selectAll(".arc")
                .data(chart.pieData)
            .enter().append("path")
                .attr("d", chart.arc)
                .style("fill", function(d) { return chart.color(d.data['name']); });
        
        // add legend
        chart.legend = chart.svg.append("g")
                .attr("class", "legend");

        chart.legend.selectAll('g').data(chart.pieData)
            .enter()
            .append('g')
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
            
        chart.showLabel = function(d) {
            chart.centerLabel.text(d['data']['name']);
            chart.centerValue.text(function() {
                return chart.pctFmt(d['data']['value']);
            });
        }
        
        chart.resetLabel = function() {
            chart.centerLabel.text("");
            chart.centerValue.text("");
        }

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
        }
    };

    chart.init(options);
    return chart;
}
