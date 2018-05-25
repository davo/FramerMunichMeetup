# Setup

appendScript = (src) ->
	parseScr = Utils.domLoadDataSync src
	script = document.createElement 'script'
	script.type = 'text/javascript'
	script.innerHTML = parseScr
	document.head.appendChild script
	
appendScript 'modules/d3.min.js'

Utils.loadWebFont 'Roboto'
Utils.loadWebFont 'Roboto Mono'

chartProps = {}
stockProps = {}
# Data
# By default, we will load NVDA

stocks = {
	stock: 'NVDA'
	color: '#264DE2'
}

data = [
	{
		symbol: 'NVDA'
		companyName: 'NVIDIA Corp'
		sector: 'Technology'
		open: 223.59
		latestPrice: 231.59
		volume: 35
	}
	{
		symbol: 'BABA'
		companyName: 'Alibaba Group Holding Limited'
		sector: 'Consumer Cyclical'
		open: 181
		latestPrice: 183.54
		volume: 18
	}
	{
		symbol: 'AMZN'
		companyName: 'Amazon.com Inc.'
		sector: 'Consumer Cyclical'
		open: 1406
		latestPrice: 1447.34
		volume: 15
	}
	{
		symbol: 'ANET'
		companyName: 'Arista Networks Inc.'
		sector: 'Technology'
		open: 248.01
		latestPrice: 255.3
		volume: 15
	}
	{
		symbol: 'NFLX'
		companyName: 'Netflix Inc.'
		sector: 'Consumer Cyclical'
		open: 287.36
		latestPrice: 295.35
		volume: 15
	}
	{
		symbol: 'DIS',
		companyName: 'The Walt Disney Company',
		sector: 'Consumer Cyclical',
		open: 98.94,
		latestPrice: 100.44,
		volume: 30
	}
	{
		symbol: 'BA',
		companyName: 'The Boeing Company',
		sector: 'Industrials',
		open: 322.94,
		latestPrice: 327.88,
		volume: 5
	}	
	{
		symbol: 'LMT',
		companyName: 'Lockheed Martin Corporation',
		sector: 'Industrials',
		open: 336.04,
		latestPrice: 337.93,
		volume: 5
	}
	{
		symbol: 'SQ'
		companyName: 'Square Inc. Class A'
		sector: 'Technology'
		open: 47.84
		latestPrice: 49.2
		volume: 15
	}
	{
		symbol: 'TEAM'
		companyName: 'Atlassian Corporation Plc'
		sector: 'Technology'
		open: 52.55
		latestPrice: 53.92
		volume: 50
	}
	{
		symbol: 'SMTC'
		companyName: 'Semtech Corporation'
		sector: 'Technology'
		open: 38.9
		latestPrice: 39.05
		volume: 10
	}
]

data.forEach (d) ->
	d.total = d.latestPrice * d.volume

quotesBySectorSummarized = d3.nest()
	.key (d) -> d.sector
	.rollup((v) ->
		{
			count: v.length
			total: d3.sum(v, (d) -> d.total)
			}
		)
	.entries(data)

ranges = ['5y','2y','1y','6m','3m', '1m']
# Custom CSS

Utils.insertCSS """

	.line {
		fill: none;
	}
	
	.axis path,
	.axis line {
		fill: none;
		stroke: #C6D4E2;
		stroke: rgba(198,212,226,0.5);
		shape-rendering: crispEdges;
	}
	
	.label {
		font-size: 12px;
		font-family: Roboto;
		font-weight: 500;
		fill: #5D7286;
		fill: rgba(93,114,134,0.5);
		text-transform: uppercase;
	}

	.overlay {
		fill: none;
		pointer-events: all;
	}
	
	.focus circle {
		fill: none;
		stroke: steelblue;
	}
	
"""

# Chart Layer

class ChartLayer extends SVGLayer
	constructor: (options = {}) ->
		_.defaults options,
			clip: true
		
		super options

# Chart layer instance
lineChart = new ChartLayer
	parent: chart
	width: chart.width
	height: chart.height
	backgroundColor: null
	ignoreEvents: false
	html: '<svg width='+chart.width+' height='+chart.height+' id="linechart"></svg>'

lineChart.pixelAlign()
# Custom d3.js functions  
# Override d3's formatPrefix function

d3_formatPrefixes = [
	'e-24'
	'e-21'
	'e-18'
	'e-15'
	'e-12'
	'e-9'
	'e-6'
	'e-3'
	''
	'K'
	'M'
	'B'
	'T'
	'P'
	'E'
	'Z'
	'Y'
]

d3_formatPrefix = (d, i) ->
	k = 10 ** (Math.abs(8 - i) * 3)
	{
		scale: if i > 8 then ((d) ->
			d / k
		) else ((d) ->
			d * k
		)
		symbol: d
	}

d3_formatPrefixes.map(d3_formatPrefix)

d3_format_precision = (x, p) ->
	p - (if x then Math.ceil(Math.log(x) / Math.LN10) else 1)

d3.formatPrefix = (value, precision) ->
	i = 0
	if value
		if value < 0
			value *= -1
		if precision
			value = d3.round(value, d3_format_precision(value, precision))
		i = 1 + Math.floor(1e-12 + Math.log(value) / Math.LN10)
		i = Math.max(-24, Math.min(24, Math.floor((i - 1) / 3) * 3))
	d3_formatPrefixes[8 + i / 3]
getStockBook = (symbol) ->
	url = "https://api.iextrading.com/1.0/stock/"
	url += symbol+"/book"
	stockProps = JSON.parse Utils.domLoadDataSync(url)
	stockProps = stockProps['quote']
getHeaderProperties = (stockProps) ->
	
	header = stockView.selectChild '.header'

	header.children.forEach (e) ->
		unless e.name is 'props'
			switch
				when e.name is 'stockSymbol'
					e.text = stockProps.symbol
				when e.name is 'companyName'
					e.text = stockProps.companyName
				when e.name is 'stockPrice'
					e.text = stockProps.close
				when e.name is 'currencySymbol'
					e.opacity = 1
getSummaryProperties = (stockProps) ->
	
	if stockView.selectChild '.summary'
		summary = stockView.selectChild '.summary'
		props = summary.selectChild 'props' 
		props?.visible = false

	summary?.children.forEach (e) ->
		
		unless e.name is 'props'
			unless e.name is '.label'
				switch
					when e.name is 'openPrice'
						e.text = stockProps.open
					when e.name is 'closePrice'
						e.text = stockProps.close
					when e.name is 'volume'
						e.text = d3.format('.3s')(stockProps.latestVolume)
					when e.name is 'marketCap'
						e.text = d3.format('.3s')(stockProps.marketCap)
					when e.name is 'week52High'
						e.text = stockProps.week52High
					when e.name is 'week52Low'
						e.text = stockProps.week52Low
# getChartProperties

line = null
		
getChartProperties = () ->

	props = chart.selectChild 'props'

	props.visible = false

	props.children.forEach (e) ->

		# Curves reference:
		# https://github.com/d3/d3-shape/blob/master/README.md#curves

		# Linear
		# Step
		# StepBefore
		# StepAfter
		# Basis
		# Cardinal
		# MonotoneX
		# CatmullRom

			
		switch
			when e.name is 'linearLine'
				chartProps.line = linearLine
				chartProps.interpolation = d3.curveLinear
			when e.name is 'smoothLine'
				chartProps.line = smoothLine
				chartProps.interpolation = d3.curveBasisOpen
			when e.name is 'gradient'
					
				chartProps.withGradient = true
				chartProps.gradient = {}
				

				chartProps.gradient.start = gradient.props.gradient.start
				chartProps.gradient.end = gradient.props.gradient.end

	chartProps.color = chartProps.line.stroke
	chartProps.strokeWidth = chartProps.line.strokeWidth
	chartProps.strokeLinecap = chartProps.line.strokeLinecap
	
	Canvas.backgroundColor = chartProps.color
	
	return chartProps

# pixelAlign function for axis
# Hack to retrieve matrix transformation values
# https://stackoverflow.com/a/38230545/1640719
 
getTranslation = (transform) ->
	
	g = document.createElementNS('http://www.w3.org/2000/svg', 'g')
	g.setAttributeNS null, 'transform', transform
	matrix = g.transform.baseVal.consolidate().matrix
	[
		matrix.e
		matrix.f
	]
# createLineChart

createLineChart = (symbol = 'APPL', period = '6m') ->
	
	new Promise (resolve, reject) ->
	
		getStockBook(symbol)
		getHeaderProperties(stockProps)
		getSummaryProperties(stockProps)
		getChartProperties()
		
		# set the dimensions and margins of the graph
		margin = 
			top: 30
			right: 0
			bottom: 30
			left: 0
	
		width = chart.width - (margin.left) - (margin.right)
		height = chart.height - (margin.top) - (margin.bottom)
	
		# Select the svg object 
	
		svg = d3.select '#linechart'
			.attr "xmlns", "http://www.w3.org/2000/svg"
	
		# Append a 'group' element to 'svg'
		# moves the 'group' element to the top left margin
		g = svg.append 'g'
			.attr 'transform', 'translate(' + margin.left + ',' + margin.top + ')'
		
		line = svg.append 'g'
			.attr 'transform', 'translate(' + margin.left + ',' + margin.top + ')'
	
	# 	line = d3.select '#line'
			
		area = svg.append 'g'
			.attr 'transform', 'translate(' + margin.left + ',' + margin.top + ')'
			
		focus = svg.append 'g'
			.attr 'transform', 'translate(' + margin.left + ',' + margin.top + ')'
			.attr('class', 'focus')
			
		# Parse the date / time
		parseTime = d3.timeParse '%Y-%m-%d'
		
		# format time for axis
		# Reference: https://bl.ocks.org/zanarmstrong/ca0adb7e426c12c06a95
		formatMonth = d3.utcFormat '%b'
		
		formatMoneyValue = d3.format(",.2s")
		
		# set the ranges
		x = d3.scaleTime().range([0, width])
		y = d3.scaleLinear().range [height ,0]
	
		# Interpolation
		customInterpolation = chartProps.interpolation
		
		# Define a line instance
		valueLine = d3.line()
			.x (d) -> x d.date
			.y (d) -> y d.close
			.curve customInterpolation
			
		valueArea = d3.area()
			.x (d) -> x d.date
			.y0 (y(0))
			.y1 (d) -> y d.close
			.curve customInterpolation
		
		process = (data) ->
			data.forEach (d) ->
				d.date = parseTime d.date
				d.open = +d.open
				d.close = +d.close
		
		url = "https://api.iextrading.com/1.0/stock/"+ symbol
		url += "/chart/"+period
		
		d3.json url, (error, data) ->
			if (error)
				throw error
			
			# Process, filter & format data
			process(data)
			
			MIN = d3.min data, (d) -> d.close
			MAX = d3.max data, (d) -> d.close
	
			# Scale the range of the data
			x.domain d3.extent data, (d) -> d.date
	
			# print period
			
			y.domain [[MIN-(MIN/2)], [MAX+(MIN/2)]]
	
			
			xAxis = d3.axisBottom(x)
				.tickFormat(formatMonth)
				.tickSize(0)
				.tickPadding(15)
				
			switch period
				when period is '3m'
					xAxis.ticks(d3.timeMonth.every(1)).tickPadding(2)
				when period is '6m'
					xAxis.ticks(d3.timeMonth.every(3))
				when period is '1y'
					xAxis.ticks(d3.timeYear.every(1))
				when period is '2y'
					xAxis.ticks(d3.timeYear.every(1))
				when period is '5y'
					xAxis.ticks(d3.timeYear.every(2))
					
			customXAxis = (g) ->
				g.attr('class', 'x axis')
	# 			https://bl.ocks.org/mbostock/4323929
				g.attr('transform', 'translate(0,' + height + ')')
				g.call xAxis
				g.select('.domain').remove()
				g.selectAll('text')
					.classed 'label', true
					.attr 'style', 'text-anchor: middle;'
					.attr 'x', 0
				
			yAxis = d3.axisLeft(y)
				.tickFormat(formatMoneyValue)
				.tickSizeInner(-width)
				.ticks(4)
					
			customYAxis = (g) ->
				g.classed 'y axis', true
				g.call yAxis
				g.select('.domain').remove()
				g.selectAll('.tick').each (d, i) ->
					
					tick = d3.select(@)
					t = getTranslation tick.attr 'transform'
					t = [t[0], Math.round t[1]]
					
					tick.attr('transform', 'translate(0,' + height + ')')
						.attr 'opacity', 0
						.transition()
						.duration(1200)
						.delay 200 * i
							.attr('transform', 'translate(0,' + t[1] + ')').attr 'opacity', 1
	
				g.selectAll('text')
					.classed 'label', true
					.attr 'style', 'text-anchor: start;'
					.attr('dy', (d) ->
						if d <= 0
							-10
						else
							-10
						)
					.attr('x', 9)
	
			if chartProps.withGradient
				area.append 'path'
					.data [data]
					.attr("d", valueArea)
					.attr 'fill', 'none'
					
	
			###
			# Add the X Axis
			g.append 'g'
				.call customXAxis
			###
			
			# Add the Y Axis
			g.append 'g'
				.call customYAxis
						
			# add the valueline path.
			line.append 'path'
				.data [data]
				.attr 'stroke-linecap', 'round'
				.attr 'stroke-linejoin', 'round'
				.attr 'class', 'line'
				.style 'stroke', chartProps.color.toRgbString()
				.style 'stroke-width', chartProps.strokeWidth
				.attr 'd', valueLine
				
			line.select(".line").each (d) ->
				totalLength = @.getTotalLength()
				d3.select(@)
					.attr("stroke-dasharray", totalLength + " " + totalLength)
					.attr("stroke-dashoffset", totalLength)
					.transition().duration(2000)
					.attr("stroke-dashoffset", 0)
			
			resolve()
		
		

stock = _.sample data
range = _.sample ranges

Utils.domComplete ->
	createLineChart(stock.symbol, range)
