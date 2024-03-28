extends Area3D

var textPos = 1
var entered = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	$Sprite3D.hide()
	$ui.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if has_overlapping_areas():
		$Sprite3D.show()
		if Input.is_action_just_pressed("interact"):
			$ui.show()
			if textPos == 4:
				textPos = 0
			else:
				pass
			textPos = textPos + 1
		
		if entered == 1:
			pass
		else:
			entered = 1
			textPos = 0
		
		if textPos == 0:
			pass
		elif textPos == 1:
			$ui/Label2.text = "This is a checkpoint!"
		elif textPos == 2:
			$ui/Label2.text = "You will respawn from where you picked it up."
		elif textPos == 3:
			$ui/Label2.text = "You may not find it useful here, but it will be later it will be a big help"
		elif textPos == 4:
			$ui.hide()
	else:
		$Sprite3D.hide()
		$ui.hide()
		entered = 0
