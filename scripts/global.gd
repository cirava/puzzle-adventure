extends Node

var piecesCollected = 0
var gemsCollected = 0
var version = 1
var checkpoint = 0
var played = 0
var paused = 0
var level = 1
var traverserPosX = 0
var traverserPosY = 0
var traverserPosZ = 0

# Called when the node enters the scene tree for the first time.
func save():
	var saveDict = {
		"gems" : gemsCollected,
		"pieces" : piecesCollected,
		"version" : version,
		"played" : played,
		"traverserPosX" : traverserPosX,
		"traverserPosY" : traverserPosY,
		"traverserPosZ" : traverserPosZ,
		"level" : level
	}
	return saveDict
	
func save_game():
	var saveGame = FileAccess.open("user://savegame.save", FileAccess.WRITE)
	
	var jsonString = JSON.stringify(save())
	
	saveGame.store_line(jsonString)
	
func load_game():
	if not FileAccess.file_exists("user://savegame.save"):
		return
	
	var saveGame = FileAccess.open("user://savegame.save", FileAccess.READ)
	
	while saveGame.get_position() < saveGame.get_length():
		var jsonString  = saveGame.get_line()
		var json = JSON.new()
		var parseResult = json.parse(jsonString)
		var node_data = json.get_data()
		
		gemsCollected = node_data["gems"]
		piecesCollected = node_data["pieces"]
		version = node_data["version"]
