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

        embedFrame.trackEvent('Embedded Charts', 'GeoID', embedFrame.params.geoID);
        embedFrame.trackEvent('Embedded Charts', 'DataID', embedFrame.params.chartDataID);
        embedFrame.trackEvent('Embedded Charts', 'Parent URL', document.referrer);

        embedFrame.parentContainerID = 'cr-embed-'+embedFrame.params.geoID+'-'+embedFrame.params.chartDataID;
        embedFrame.params.chartDataID = embedFrame.params.chartDataID.split('-');
        embedFrame.dataSource = 'http://embed.wazimap.co.za/01/data/profiles/'+embedFrame.params.geoID+'.json';
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
//                embedFrame.makeChartAbout();
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
            .text(embedFrame.data.geographyData['this'].full_name);
    }

    embedFrame.makeChartAbout = function() {
        var aboutData = embedFrame.data.chartData.metadata;

        embedFrame.elements.chartAbout = [
            '<h3 class="chart-header">' + embedFrame.data.geographyData['this'].full_name + '</h3>',
            '<h3 class="chart-title">' + embedFrame.params.chartTitle + '</h3>',
            '<ul>',
            '<li><strong>This chart counts:</strong> ' + aboutData.universe + '</li>',
            '<li>The data in this chart comes from <a href="http://censusreporter.org/data/table/?table=' + aboutData.table_id.toUpperCase() + '&primary_geo_id=' + embedFrame.params.geoID + '&geo_ids=' + embedFrame.params.geoID + '">Table ' + aboutData.table_id.toUpperCase() + '</a> in the U.S. Census Bureau&rsquo;s ' + aboutData.acs_release + ' release. The chart is from <a href="http://censusreporter.org">Census Reporter</a>, a project to make Census data easier to use and understand.</li>',
            '<li><a href="http://censusreporter.org/profiles/' + embedFrame.params.geoID + '/">See more data from ' + embedFrame.data.geographyData['this'].full_name + '</a>',
            '</ul>'
        ].join('');
    }

    embedFrame.makeChartFooter = function() {
        embedFrame.elements.footer = d3.select('.census-chart-embed').append('div')
            .classed('embed-footer', true);
                    
//        embedFrame.elements.footer.append('ul')
//            .append('li')
//            .html('<a href="#" id="about-trigger">About this chart</a>');

        embedFrame.elements.footer.append('a')
            .classed('title', true)
            .attr('href', 'http://wazimap.co.za/profiles/' + embedFrame.params.geoID + '/')
            .html('<img src="http://embed.wazimap.co.za/01/img/wazi-logo.png"> Wazi');
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
            var flipText = (embedFrame.flipped) ? 'Back to chart' : 'About this chart';
            $(this).text(flipText);
            embedFrame.trackEvent('Embedded Charts', 'About pane open', embedFrame.flipped.toString());
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
    
    embedFrame.trackEvent = function(category, action, label) {
        // make sure we have Google Analytics function available
        if (typeof(ga) == 'function') {
            ga('send', 'event', category, action, label);
        }
    }

    embedFrame.chartSetup();
    embedFrame.getChartData();
    embedFrame.addChartListeners();
}
makeEmbedFrame();
