d3.chart("ColumnChart", {
    initialize: function(options) {
        options = options || {};
        var baseDiv = this.base.append("div")
            .classed("chart column-chart", true);
        var baseDivWidth = baseDiv[0][0].offsetWidth;

        // defaults
        this.margin = {top: 10, right: 0, bottom: 30, left: 30};
        // if not given explicit width, set to full width of container
        this.fullWidth = (options.width || baseDivWidth);
        this.width = this.fullWidth - this.margin.left - this.margin.right;
        this.fullHeight = (options.height || 135);
        this.height = this.fullHeight - this.margin.top - this.margin.bottom;
        this.tickPadding = options.tickPadding || 5;

        var baseChart = baseDiv.append("svg")
            .attr("width", this.fullWidth)
            .attr("height", this.fullHeight)
          .append("g")
            .attr("transform", "translate(" + this.margin.left + "," + this.margin.top + ")");
        
        this.x = d3.scale.ordinal()
            .rangeRoundBands([0, this.width], .1);
            // data will be mapped to domain in first layer's dataBind
            //.domain(data.map(function(d) { return d.race; }));
            
        this.y = d3.scale.linear()
            .range([this.height, 0])
            .domain([0, 100]);

        // add y axis
        this.yAxis = d3.svg.axis()
            .scale(this.y)
            .orient("left")
            .tickSize(-this.width)
            .tickPadding(this.tickPadding)
            .tickValues(d3.range(0, 101, 25));

        var yAxisBase = baseChart.append("g")
            .attr("class", "y axis")
            .call(this.yAxis);

        // add columns
        var columnLayerBase = baseDiv;
                  
        this.layer("columns", columnLayerBase, {
            dataBind: function(data) {
                var chart = this.chart();
                // bind data to x.domain, which can be used by other layers
                chart.x.domain(data.map(function(d) { return d.name; }));
                return this.selectAll(".column-chart-column")
                    .data(data);
            },
            insert: function() {
                var chart = this.chart();
                return this.append("a")
                    .attr("class", "column-chart-column")
                    .style("width", chart.x.rangeBand() + "px")
                    .style("bottom", function(d) { return (chart.margin.bottom + chart.tickPadding) + "px"; })
                    .style("left", function(d) { return (chart.x(d.name) + chart.margin.left) + "px"; })
                    .style("height", function(d) { return (chart.height - chart.y(d.value)) + "px"; });
            }
        });

        // add labels
        var labelLayerBase = baseChart.append("g")
            .classed("column-chart-labels", true);
        
        this.layer("labels", labelLayerBase, {
            dataBind: function(data) {
                return this.selectAll("text")
                    .data(data);
            },
            insert: function() {
                var chart = this.chart();
                return this.append("text")
                    .text(function(d) { return d.value+"%"; })
                    .attr("text-anchor", "middle")
                    .attr("x", function(d) { return chart.x(d.name) + (chart.x.rangeBand() / 2); })
                    .attr("y", function(d) { return chart.y(d.value) - 8; });
            }
        });
        
        // add x axis, which needs to be bound to data
        var xAxisLayerBase = baseChart.append("g")
            .classed("x axis", true)
            .attr("transform", "translate(0," + this.height + ")");

        this.layer("xAxis", xAxisLayerBase, {
            // bind data, return the selection+data call
            dataBind: function(data) {
                return this.selectAll("g")
                    .data(data);
            },
            insert: function() {
                var chart = this.chart();
                return this.append("g")
                    .classed("tick major", true)
                    .style("opacity", 1)
                    .attr("transform", function(d) { return "translate(" + (chart.x(d.name) + (chart.x.rangeBand() / 2)) + ", 0)"; })
                  .append("text")
                    .text(function(d) { return d.name; })
                    .attr("x", 0)
                    .attr("y", 11)
                    .attr("dy", ".71em")
                    .style("text-anchor", "middle");
            }
        });
    },
    
    width: function(newWidth) {
        if (!arguments.length) {
            return this.width;
        }
        this._width = newWidth;
        this.base.attr("width", this._width);
        this.x.rangeRoundBands([0, this._width], .1);
        return this;
    },

    height: function(newHeight) {
        if (!arguments.length) {
            return this.height;
        }
        this._height = newHeight;
        this.base.attr("height", this._height);
        return this;
    },
});

