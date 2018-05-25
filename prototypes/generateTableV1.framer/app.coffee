# Requirements & Configurations

unless Utils.isFramerStudio() then Framer.Extras.Preloader.enable()

Framer.Defaults.Animation = 
	time: 0.52
	curve: Spring(damping: 0.82)

# TODO: Insert MoreUtils.coffee

appendScript = (src) ->
	parseScr = Utils.domLoadDataSync src
	script = document.createElement 'script'
	script.type = 'text/javascript'
	script.innerHTML = parseScr
	document.head.appendChild script

appendScript 'js/faker.min.js'

f = faker
f.locale = 'en_US'

Framer.Extras.Hints.disable()
Canvas.backgroundColor = 'black'

	
	

# Resize & Center

main.props =
	width: Screen.width
	height: Screen.height
	
Canvas.onResize ->

	main.props =
		width: Screen.width
		height: Screen.heigh
		
	table.animate
		x: Align.center()

# Mock Data Generator

data = []

person = (index) ->
	
	p = {}
	p.amount = f.commerce.price()
	p.index = index
	p.name = f.name.findName()
	p.profession = f.name.jobTitle()
	p.city = f.address.city()
	p.state = f.address.state()
	p.phone = f.phone.phoneNumber()
	p.age = _.random 18, 110
	data.push p
		
generateMockData = (range) ->
	for i in _.range(range)
		person(i)
	
	return data

max = 16

createTable = () ->
	
	samples = max
	
	table.x = Align.center()
	
	row.visible = false

	mock = generateMockData(samples)
	
	mock.forEach (d, i) ->
				
		tr = row.copy()
		tr.props =
			parent: table
			visible: true
			y: row.y + row.height * i
		
		name = tr.selectChild '.name'
		name.text = d.name
		
		profileLayer = tr.selectChild '.subtitle'
		profileLayer.text = d.profession
		profileLayer.autoSize = true

				
		amountLayer = tr.selectChild '.amount'
		amountLayer.text = '$'+d.amount
				
		cityLayer = tr.selectChild '.cityState'
		cityLayer.text = d.city+', '+d.state

		phoneLayer = tr.selectChild '.phone'
		phoneLayer.text = d.phone
		
		Utils.delay 0, ->
			table.height = table.contentFrame().height
			table.animate
				y: Align.center()

createTable()
