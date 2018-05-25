# Append Script

appendScript = (src) ->
	parseScr = Utils.domLoadDataSync src
	script = document.createElement 'script'
	script.type = 'text/javascript'
	script.innerHTML = parseScr
	document.head.appendChild(script)

appendScript 'https://cdnjs.cloudflare.com/ajax/libs/d3/4.10.2/d3.min.js'

# These are builds for Framer. Keep in mind that most of these are beta and some of them might be broken.

# Update bars
# http://bl.ocks.org/nnattawat/8916402
# https://bl.ocks.org/RandomEtc/cff3610e7dd47bef2d01


# Builds
# https://builds.framerjs.com/

{builds} = require 'builds'
{updates} = require 'updates'

class ChartLayer extends SVGLayer
	constructor: (options = {}) ->
		_.defaults options,
			clip: true
			backgroundColor: null
			ignoreEvents: false
			
		super options



# Create Histogram Chart

histogramChart = new ChartLayer
	parent: heatmap
	width: heatmap.width
	height: heatmap.height
	svg: '<svg width='+heatmap.width+' height='+heatmap.height+' id="histogramChart"></svg>'

parseDateBuilds = d3.timeParse "%a %b %e %H:%M:%S %Y"

getAuthors = (data) ->
	authors = []
	data.forEach (d, i) ->
		authors.push d.author
	return authors

getCommitsByYear = (data) ->
	
	commits = data
	
	commits.forEach (d) ->
		d.month = d.date.getMonth()
		d.year = d.date.getFullYear()
	
	
	return d3.nest()
		.key (d) -> d.year
		.rollup (v) -> count = v.length
		.entries(commits)

startDate = new Date(2012, 10, 1)
endDate = new Date(2018, 4, 1)	
	
getCommitsByAuthor = (data) ->
	return d3.nest()
		.key (d) -> d.author
		.rollup (v) -> count = v.length
		.entries(data)


margin = {top: 100, right: 20, bottom: 80, left: 50}
width = histogramChart.width - margin.left - margin.right
height = histogramChart.height - margin.top - margin.bottom






createTimeline = (data) ->

	# color = d3.scaleQuantize()
	
	data.forEach (d) ->
		d.date = parseDateBuilds d.date
	
		
	timeRange = d3.timeYears(startDate, d3.timeYear.offset(endDate, 1))
	
	authors = getAuthors(data)
	
	commitsByYear = getCommitsByYear(data)

	colours = d3.scaleLinear()
		.domain d3.extent(commitsByYear, (d) -> d.value)
		.range(['#8df', '#05f'])

	x = d3.scaleTime()
# 		.domain(d3.extent(data, (d) -> d.date))
		.domain([startDate, endDate])
		.rangeRound([0, width])
		.clamp(true)
	
	y = d3.scaleLinear()
		.range([height, 0])
		
	histogram = d3.histogram()
		.value (d) -> d.date
		.domain(x.domain())
		.thresholds x.ticks(d3.timeMonth)

	svg = d3.select('#histogramChart').data(data)
	
	g = svg.append('g').attr('class', 'histogram')
		.attr("transform", "translate(" + margin.left + "," + margin.top + ")")
	
	g.append('g').attr("class", "axis axis--y")
		.call d3.axisLeft(y)
# 		.tickSize(-width)
	
	g.append 'g'
		.attr("class", "axis axis--x")
		.attr("transform", "translate(0," + height + ")")
		.call(d3.axisBottom(x))

	bins = histogram(data)
	
	y.domain([0, d3.max(bins, (d) -> d.length)])
	
	bar = g.selectAll ".bar"
		.data(bins)
		.enter().append("g")
			.attr("class", "bar")
			.attr("transform", (d) -> "translate(" + x(d.x0) + "," + y(d.length) + ")")
			
	bar.append('rect')
# 		.attr('x', 1)
		.attr 'width', ((d) -> x(d.x1) - x(d.x0)-1)
# 		.attr 'y', height
# 		.attr 'height', 0
		.attr 'opacity', 0
		.attr 'height', (d,i) -> (height - y(d.length))
		
		.transition()
		.duration(500).delay((d, i) -> i * 5)
		#.attr 'y', (d,i) -> y(d.length)
		.attr('opacity', 1)
		.attr 'fill', (d) -> colours height - y(d.length)

# sortChange()
# https://bl.ocks.org/mbostock/3885705

updateTimeline = (data) ->
	
	histogram = d3.histogram()
		.value (d) -> d.date
		.thresholds x.ticks(d3.timeWeeks)

	bins = histogram(data)

	x = d3.scaleTime()
		.rangeRound([0, width])
		.clamp(true)
		
	y.domain([0, d3.max(bins, (d) -> d.length)])

	
	bars = svg.selectAll(".bar").data(bins)
	
	
	bars.exit()
		.transition()
			.duration(300)
		.attr("y", y(0))
		.attr("height", height - y(0))
		.style('fill-opacity', 1e-6)
		.remove()

	bars.enter().append("rect")
		.attr("class", "bar")
		.attr("y", y(0))
		.attr("height", height - y(0))

parseDate = d3.timeParse "%B %d, %Y"

createFramerStudioUpdates = (data) ->
	
	
	data.forEach (d) ->
		d.date = parseDate d.date

Utils.delay 1, ->
	createTimeline builds
	
	Utils.delay 2, ->
		createFramerStudioUpdates updates
# 		updateTimeline builds