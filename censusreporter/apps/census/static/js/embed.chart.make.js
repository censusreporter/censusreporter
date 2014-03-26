window.browserWidth = document.documentElement.clientWidth;
var gracefulType = function(chartType) {
    // convert certain chart types to more readable versions at narrow widths
    if (browserWidth <= 360) {
        if (chartType == 'column' || chartType == 'histogram') {
            return 'bar'
        } else if (chartType == 'grouped_column') {
            return 'grouped_bar'
        }
    }
    return chartType
}

Chart({
    chartContainer: 'census-chart',
    chartType: gracefulType(chartType),
    chartHeight: 160,
    chartData: chartData,
    chartQualifier: chartQualifier,
    chartChartTitle: chartChartTitle,
    chartInitialSort: chartInitialSort,
    chartStatType: chartStatType,
    geographyData: geographyData
});