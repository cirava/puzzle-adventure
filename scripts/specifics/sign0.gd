extends Area3D

var textPos = 1
var entered = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	$Sprite3D.hide()
	$ui.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if has_overlapping_bodies():
		$Sprite3D.show()
		if Input.is_action_just_pressed("interact"):
			$ui.show()
			textPos = textPos + 1
		
		if entered == 1:
			pass
		else:
			entered = 1
			textPos = 0
		
		if textPos == 0:
			pass
		elif textPos == 1:
			$ui/Label2.text = "test test test test test test"
		elif textPos == 2:
			$ui/Label2.text = "hopefully sign scrolling works"
		elif textPos == 3:
			$ui/Label2.text = "test test test test test test test test test test test test test test test test test test"
		elif textPos == 4:
			$ui/Label2.text = "god this looks fucking stupid"
		elif textPos == 5:
			$ui.hide()
	else:
		$Sprite3D.hide()
		$ui.hide()
		entered = 0
