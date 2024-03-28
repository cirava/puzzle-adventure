extends Control

var timeout = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	$Sprite2D.scale.x = 0
	$Sprite2D.scale.y = 0
	$Sprite2D.rotation_degrees = 0
	$Sprite2D.self_modulate.a = 1
	$AudioStreamPlayer.play()
	get_tree().create_timer(6.0).timeout
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $Sprite2D.scale.x < 2:
		$Sprite2D.scale.x = $Sprite2D.scale.x + 0.025
	else:
		pass

	if $Sprite2D.scale.y < 2:
		$Sprite2D.scale.y = $Sprite2D.scale.y + 0.025
	else:
		pass
	
	if $Sprite2D.rotation_degrees < 360:
		$Sprite2D.rotation_degrees = $Sprite2D.rotation_degrees + 4.5
	else:
		pass
	
	if $Sprite2D.scale.x == 2:
		$Sprite2D.self_modulate.a = $Sprite2D.self_modulate.a - .01
	
	timer()
		
func timer():
	await get_tree().create_timer(6.0).timeout
	get_tree().change_scene_to_file("res://scenes/loading_screen0.tscn")
		
	
