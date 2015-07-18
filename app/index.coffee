console.log "yolo"

mights = require './might'
elements = require './elements'

for element of elements.arcane
	totalMight = 0
	console.log element + ':'
	data = elements.arcane[element]
	for attr of data

		val = data[attr]
		char = mights.hill
		if char[attr]
			might = char[attr] * val
			totalMight += might

		console.log attr + ' ' + val + ' - ' + might
	console.log 'total might: '+ totalMight