extends Node
@onready var quote = $"../Quote"
@onready var source = $"../Source"

var rng = RandomNumberGenerator.new()

func _ready():
	rng.randomize()
	var randQ = rng.randi_range(0,FileReader.quoteCount)
	print(FileReader.quoteCount)
	
	quote.text = str("\"", FileReader.quoteData[randQ]["quote"],"\"")
	source.text = str("-", FileReader.quoteData[randQ]["source"])

func _on_pressed():
	rng.randomize()
	var randQ = rng.randi_range(0,FileReader.quoteCount)
	quote.text = str("\"", FileReader.quoteData[randQ]["quote"],"\"")
	source.text = str("-", FileReader.quoteData[randQ]["source"])
