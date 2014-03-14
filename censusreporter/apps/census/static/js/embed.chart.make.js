window.browserWidth = document.documentElement.clientWidth;
var gracefulType = function(chartType) {
    // convert certain chart types to more readable versions at narrow widths
    if (browserWidth <= 640) {
        if (chartType == 'column' || chartType == 'histogram') {
            return 'bar'
        } else if (chartType == 'grouped_column') {
            return 'grouped_bar'
        }
    }
    return chartType
}

var chartDiv = $('#census-chart'),
    chartType = gracefulType('pie'),
    chartChartTitle = 'Population by age category',
    chartInitialSort = '-value',
    chartStatType = 'percentage',
    chartQualifier = chartDiv.data('qualifier') || null;


Chart({
    chartContainer: 'census-chart',
    chartType: chartType,
    chartHeight: 160,
    chartData: chartData,
    chartQualifier: chartQualifier,
    chartChartTitle: chartChartTitle,
    chartInitialSort: chartInitialSort,
    chartStatType: chartStatType,
    geographyData: geographyData
});