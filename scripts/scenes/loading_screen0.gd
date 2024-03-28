extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	load("res://scenes/title_screen.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	await get_tree().create_timer(.5).timeout
	get_tree().change_scene_to_file("res://scenes/title_screen.tscn")
