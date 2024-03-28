extends Node3D

var pressed1 = 0
var pressed2 = 0
var pressed3 = 0
var pressed4 = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	$green.hide()
	$button1/green.hide()
	$button2/green.hide()
	$button3/green.hide()
	$button4/green.hide()
	$platform.position.y = -5


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if pressed1 == 1 and pressed2 == 1 and pressed3 == 0 and pressed4 == 1:
		$red.hide()
		$green.show()
		$platform.position.y = 2
	else:
		$red.show()
		$green.hide()
		$platform.position.y = -5
		
	
	if $button1.has_overlapping_areas():
		$button1/Sprite3D.show()
		if Input.is_action_just_pressed("interact"):
			if pressed1 == 0:
				pressed1 = 1
			elif pressed1 == 1:
				pressed1 = 0
			$button1/AudioStreamPlayer3D.play()
	else:
		$button1/Sprite3D.hide()
	if pressed1 == 0:
		$button1/green.hide()
		$button1/red.show()
	elif pressed1 == 1:
		$button1/green.show()
		$button1/red.hide()
		
	if $button2.has_overlapping_areas():
		$button2/Sprite3D.show()
		if Input.is_action_just_pressed("interact"):
			if pressed2 == 0:
				pressed2 = 1
			elif pressed2 == 1:
				pressed2 = 0
			$button2/AudioStreamPlayer3D.play()
	else:
		$button2/Sprite3D.hide()
	if pressed2 == 0:
		$button2/green.hide()
		$button2/red.show()
	elif pressed2 == 1:
		$button2/green.show()
		$button2/red.hide()
		
	if $button3.has_overlapping_areas():
		$button3/Sprite3D.show()
		if Input.is_action_just_pressed("interact"):
			if pressed3 == 0:
				pressed3 = 1
			elif pressed3 == 1:
				pressed3 = 0
			$button3/AudioStreamPlayer3D.play()
	else:
		$button3/Sprite3D.hide()
	if pressed3 == 0:
		$button3/green.hide()
		$button3/red.show()
	elif pressed3 == 1:
		$button3/green.show()
		$button3/red.hide()
		
	if $button4.has_overlapping_areas():
		$button4/Sprite3D.show()
		if Input.is_action_just_pressed("interact"):
			if pressed4 == 0:
				pressed4 = 1
			elif pressed4 == 1:
				pressed4 = 0
			$button4/AudioStreamPlayer3D.play()
	else:
		$button4/Sprite3D.hide()
	if pressed4 == 0:
		$button4/green.hide()
		$button4/red.show()
	elif pressed4 == 1:
		$button4/green.show()
		$button4/red.hide()



