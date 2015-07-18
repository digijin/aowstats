
mights = require './might'
elements = require './elements'

view = require './view/elements'

window.onload = ->
	elementMights = []
	for element of elements.arcane
		el = {}
		el.name = element
		# console.log element + ':'
		for charname of mights
			totalMight = 0
			data = elements.arcane[element]
			el.attrs = []
			for attr of data

				val = data[attr]
				char = mights[charname]
				if char[attr]
					might = char[attr] * val
					totalMight += might

				el.attrs.push {name: attr, val: val, might: might}
				# console.log attr + ' ' + val + ' - ' + might
			# console.log 'total might: '+ totalMight
			el[charname] = totalMight
			el.might = totalMight
		elementMights.push el
	
	# console.log elementMights
	document.body.innerHTML = view({elements: elementMights})
		