function makeEmbedFrame() {
    var embedFrame = {
        params: {},
        data: {},
        elements: {}
    };

    embedFrame.chartSetup = function() {
        var match,
            search = /([^&=]+)=?([^&]*)/g,
            decode = function (s) { return decodeURIComponent(s.replace(/\+/g, " ")); },
            query = window.location.search.substring(1);
        
        while (match = search.exec(query)) {
            embedFrame.params[decode(match[1])] = decode(match[2]);
        }

        if (typeof(ga) == 'function') {
            ga('send', 'event', 'Embedded Charts', 'GeoID', embedFrame.params.geoID);
            ga('send', 'event', 'Embedded Charts', 'DataID', embedFrame.params.chartDataID);
            ga('send', 'event', 'Embedded Charts', 'Parent URL', document.referrer);
        }

        embedFrame.parentContainerID = 'cr-embed-'+embedFrame.params.geoID+'-'+embedFrame.params.chartDataID;
        embedFrame.params.chartDataID = embedFrame.params.chartDataID.split('-');
        embedFrame.dataSource = 'https://s3.amazonaws.com/embed.censusreporter.org/1.0/data/profiles/'+embedFrame.params.geoID+'.json';
        // avoid css media-query caching issues with multiple embeds on same page
        $('#chart-styles').attr('href','css/charts.css?'+embedFrame.parentContainerID)
        embedFrame.makeChartFooter();
    }

    embedFrame.getChartData = function() {
        $.getJSON(embedFrame.dataSource)
            .done(function(results) {
                // allow arbitrary nesting in API data structure
                var data = results[embedFrame.params.chartDataID[0]],
                    drilldown = embedFrame.params.chartDataID.length - 1;
                if (drilldown >= 1) {
                    for (var i = 1; i <= drilldown; i++) {
                        data = data[embedFrame.params.chartDataID[i]];
                    }
                }
            
                embedFrame.data.chartData = data;
                embedFrame.data.geographyData = results.geography;
                embedFrame.makeChart();
                embedFrame.makeChartAbout();
            });
    }

    embedFrame.makeChart = function() {
        embedFrame.resetContainer();
        embedFrame.makeChartPlace();

        embedFrame.elements.chart = Chart({
            chartContainer: 'census-chart',
            chartType: embedFrame.gracefulType(embedFrame.params.chartType),
            chartData: embedFrame.data.chartData,
            chartHeight: embedFrame.params.chartHeight,
            chartQualifier: embedFrame.params.chartQualifier,
            chartChartTitle: embedFrame.params.chartTitle,
            chartInitialSort: embedFrame.params.chartInitialSort,
            chartStatType: embedFrame.params.statType,
            geographyData: embedFrame.data.geographyData
        });

        if (!!embedFrame.parentOrigin) {
            embedFrame.sendDataToParent({
                containerID: embedFrame.parentContainerID,
                chartHeight: embedFrame.elements.chart.settings.height
            });
        }
    }

    embedFrame.makeChartPlace = function() {
        d3.select('#census-chart').append('h3')
            .classed('chart-header', true)
            .text(embedFrame.data.geographyData.this.full_name);
    }

    embedFrame.makeChartAbout = function() {
        var aboutData = embedFrame.data.chartData.metadata;
        embedFrame.elements.chartAbout = [
            '<h3>About this chart</h3>',
            '<ul>',
            '<li><strong>Census release:</strong> ' + aboutData.acs_release + '</li>',
            '<li><strong>Census data table:</strong> <a href="http://censusreporter.org/data/table/?table=' + aboutData.table_id.toUpperCase() + '&primary_geo_id=' + embedFrame.params.geoID + '&geo_ids=' + embedFrame.params.geoID + '">' + aboutData.table_id.toUpperCase() + '</a></li>',
            '<li><strong>This chart counts:</strong> ' + aboutData.universe + '</li>',
            '<li><a href="http://censusreporter.org/profiles/' + embedFrame.params.geoID + '/">See more data from ' + embedFrame.data.geographyData.this.full_name + '</a>',
            '</ul>'
        ].join('');
    }

    embedFrame.makeChartFooter = function() {
        embedFrame.elements.footer = d3.select('.census-chart-embed').append('div')
            .classed('embed-footer', true);
                    
        embedFrame.elements.footer.append('ul')
            .append('li')
            .html('<a href="#" id="about-trigger">About</a>');

        embedFrame.elements.footer.append('a')
            .classed('title', true)
            .attr('href', 'http://censusreporter.org')
            .html('<img src="https://s3.amazonaws.com/embed.censusreporter.org/1.0/img/logo-embed.png"> Census Reporter');
    }

    embedFrame.addChartListeners = function() {
        // allow for older IE
        var eventMethod = window.addEventListener ? 'addEventListener' : 'attachEvent',
            eventListener = window[eventMethod],
            messageEvent = (eventMethod == 'attachEvent') ? 'onmessage' : 'message';
        eventListener(messageEvent, embedFrame.handleMessage, false);
    
        var flip = flippant.flip,
            back;
        
        embedFrame.flipped = false,
        $('.embed-footer').on('click', '#about-trigger', function(e) {
            e.preventDefault();
            if (!embedFrame.flipped) {
                back = flip(embedFrame.elements.container, embedFrame.elements.chartAbout)
                embedFrame.flipped = true;
            } else {
                back.close();
                embedFrame.flipped = false;
            }
        });
    }

    embedFrame.resetContainer = function() {
        window.browserWidth = document.documentElement.clientWidth;
        embedFrame.elements.container = document.getElementById('census-chart');
        embedFrame.elements.container.innerHTML = "";
    }

    embedFrame.gracefulType = function(chartType) {
        // convert certain chart types to more readable versions at narrow widths
        if (window.browserWidth <= 480) {
            if (chartType == 'column' || chartType == 'histogram') {
                return 'bar'
            } else if (chartType == 'grouped_column') {
                return 'grouped_bar'
            }
        }
        return chartType
    }

    embedFrame.handleMessage = function(event) {
        var messageData = JSON.parse(event.data);
        embedFrame.parentOrigin = event.origin;
        if (messageData.resize && embedFrame.data.chartData) {
            embedFrame.makeChart();
        }
    }

    embedFrame.sendDataToParent = function(data) {
        // IE9 can only send strings via postmessage
        parent.postMessage(JSON.stringify(data), embedFrame.parentOrigin);
    }

    embedFrame.chartSetup();
    embedFrame.getChartData();
    embedFrame.addChartListeners();
}
makeEmbedFrame();
