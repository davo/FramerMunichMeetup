# Loading some data from 
# https://www.lists.design/

# List of questions:
# https://listsdesign.herokuapp.com/lists/questions-en

Utils.domLoadJSON 'modules/questions-en.json', (err, res) ->
	try
		parseData res
	catch err
		print err
		throw Error err

scrollableListOfQuestions = new ScrollComponent
	size: Screen.size
	backgroundColor: null
	scrollHorizontal: false
	mouseWheelEnabled: true

parseData = (data) ->
	questions = data['Questions']
	
	
	
	questions.forEach (question, index) ->
			showQuestion question.data, index

showQuestion = (question, index) ->
	question = new TextLayer
		fontFamily: "-apple-system, Helvetica"
		fontSize: 30
		text: question
		parent: scrollableListOfQuestions.content
		color: 'Blue'
		hueRotate: _.random 120
		x: Align.center()
		y: 60 * index + 40
		


