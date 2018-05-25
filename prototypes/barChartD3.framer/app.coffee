# Import D3.js

appendScript = (src) ->
	parseScr = Utils.domLoadDataSync src
	script = document.createElement 'script'
	script.type = 'text/javascript'
	script.innerHTML = parseScr
	document.head.appendChild script
	
appendScript 'https://cdnjs.cloudflare.com/ajax/libs/d3/4.13.0/d3.min.js'

# Data
# Top 20 Movies in 2017 by Box Office, in millions of dollars 

data = [
	{
		movie: 'Star Wars: The Last Jedi'
		gross: 619483244
	},
	{
		movie: 'Beauty and the Beast'
		gross: 504014165
	},
	{
		movie: 'Wonder Woman'
		gross: 412563408
	},
	{
		movie: 'Jumanji: Welcome to the Jungle'
		gross: 397250264
	},
	{
		movie: 'Guardians of the Galaxy Vol. 2'
		gross: 389813101
	},
	{
		movie: 'Spider-Man: Homecoming'
		gross: 334201140
	},
	{
		movie: 'It'
		gross: 327481748
	},
	{
		movie: 'Thor: Ragnarok'
		gross: 315034967
	},
	{
		movie: 'Despicable Me 3'
		gross: 264624300
	},
	{
		movie: 'Justice League'
		gross: 229007315
	},
	{
		movie: 'Logan'
		gross: 226277068
	},
	{
		movie: 'The Fate of the Furious'
		gross: 226008385
	},
	{
		movie: 'Coco'
		gross: 208840284
	},
	{
		movie: 'Dunkirk'
		gross: 188045546
	},
	{
		movie: 'Get Out'
		gross: 176040665
	},
	{
		movie: 'The LEGO Batman Movie'
		gross: 175750384
	},
	{
		movie: 'The Boss Baby'
		gross: 175003033
	},
	{
		movie: 'Pirates of the Caribbean: Dead Men Tell No Tales'
		gross: 172558876
	},
	{
		movie: 'Kong: Skull Island'
		gross: 168052812
	},
	{
		movie: 'The Greatest Showman'
		gross: 167614558
	}
]

chart.borderColor = null
barTemplate.visible = false

tag = tooltipTemplate.selectChild '.tag'
tag.visible = false
tooltipTemplate.opacity = 0

movieTitle = tooltipTemplate.selectChild 'movieTitle'
totalGross = tooltipTemplate.selectChild 'totalGross'

# Array to store the bars
bars = []

# Setting up D3.js

# 1. Scales
# We need to set up some ranges for our data.

# Using d3.scaleBand() to distribute the
# collection of movie titles between 0 and the width of our chart.

x = d3.scaleBand()
	.rangeRound([0, chart.width])

# Keep working
	
y = d3.scaleLinear()
	.range([0, chart.height])

formatNumber = d3.format('.1f')

tooltipTemplate.midX = 1

data.forEach (d, i) ->
	
	x.domain data.map((d) -> d.movie)
	y.domain [0, d3.max data, (d) -> d.gross]
	
	bar = new SliderComponent
		name: '.bar'
		backgroundColor: null
		parent: chart
		rotation: 180
		min: 0
		max: chart.height
		width: 20
		value: 20
		height: chart.height
		x: x d.movie
		custom: [d.movie, d.gross]
	
	bars.push bar
		
	bar.animate
		value: y d.gross
		options:
			time: 0.5
			delay: 0.02 * i

	bar.fill.gradient = barTemplate.gradient
	bar.fill.borderRadius = barTemplate.borderRadius
	
	bar.sliderOverlay.off Events.TapStart
	bar.knob.draggable = false
	bar.knob.visible = false
	bar.knob.name = '.'
	bar.fill.name = '.'
	bar.sliderOverlay.name = '.'
	
	bar.on 'mouseover', () ->
		
		bars.map (b) ->
			b.opacity = 0.48
			
		@.opacity = 1
		
		number = formatNumber(bar.custom[1] / 1e6)
		
		movieTitle.template = 
			movieTitle: bar.custom[0]

		totalGross.template = 
			totalGross: "$#{ number }M"


		tooltipTemplate.animate
			opacity: 1
			x: bar.x + tooltipTemplate.width / 2
			y: bar.height - bar.value
			rotationX: 0
			options: 
				time: 0.25

	bar.on 'mouseout', () ->
		
		bars.map (b) ->
			b.animate
				opacity: 1
				options:
					time: 0.05
			
		tooltipTemplate.animate
			opacity: 0
			y: tooltipTemplate.y + 12
			options: 
				time: 0.25
			
