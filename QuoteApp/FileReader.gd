extends Node

var quoteData = {}
var path = "res://quotes.json"
var quoteCount

func _ready():
	quoteData = load_json(path)

func load_json(path: String):
	var file = FileAccess.open(path, FileAccess.READ)
	var content = file.get_as_text()
	var json = JSON.new()
	var finish = json.parse_string(content)
	quoteCount = len(finish)
	quoteCount -= 1
	
	return finish
