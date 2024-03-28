extends Control

func _ready():
	pass

func _process(delta):
	pass
	
func _on_menu_pressed():
	Global.piecesCollected = 0
	Global.gemsCollected = 0
	Global.played = 1
	Engine.time_scale = 1
	get_tree().change_scene_to_file("res://scenes/title_screen.tscn")
