module.exports = function (grunt) {
    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),
        concat: {
            js: {
                src: [
                    'censusreporter/apps/census/static/js/vendor/jquery-1.9.1.min.js',
                    'censusreporter/apps/census/static/js/vendor/d3.v3.min.js',
                    'censusreporter/apps/census/static/js/charts.js',
                    'censusreporter/apps/census/static/js/embed.chart.make.js'
                ],
                dest: 'censusreporter/apps/census/static/js/embed.chart.bundle.js'
            }
        },
        uglify: {
            js: {
                files: {
                    'censusreporter/apps/census/static/js/embed.chart.bundle.js': ['censusreporter/apps/census/static/js/embed.chart.bundle.js']
                }
            }
        },
        htmlmin: {
            test: {
                options: {
                  removeComments: true,
                  collapseWhitespace: true
                },
                files: {
                  'censusreporter/apps/census/static/test.min.html': 'censusreporter/apps/census/static/test.min.html'
                }
            }
        }
    });
    grunt.loadNpmTasks('grunt-contrib-concat');
    grunt.loadNpmTasks('grunt-contrib-uglify');
    grunt.loadNpmTasks('grunt-contrib-htmlmin');
    grunt.registerTask('default', ['concat:js', 'uglify:js', 'htmlmin']);
};