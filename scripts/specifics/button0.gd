extends Node3D

var buttonPress = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	$button/Sprite3D.hide()
	$green.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $button.has_overlapping_areas():
		$button/Sprite3D.show()
		if Input.is_action_just_pressed("interact"):
			if buttonPress == 0:
				buttonPress = 1
			elif buttonPress == 1:
				buttonPress = 0
			$button/AudioStreamPlayer3D.play()
	else:
		$button/Sprite3D.hide()
	if buttonPress == 0:
		$green.hide()
		$red.show()
	elif buttonPress == 1:
		$green.show()
		$red.hide()
