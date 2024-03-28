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
			if textPos == 6:
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
			$ui/Label2.text = "Welcome to the Grassy Plains!"
		elif textPos == 2:
			$ui/Label2.text = "You are a Traverser."
		elif textPos == 3:
			$ui/Label2.text = "Currently, 9 gems are out of the hands of the realm's leaders."
		elif textPos == 4:
			$ui/Label2.text = "Your task is to recover these 9 gems so our leaders can have them back."
		elif textPos == 5:
			$ui/Label2.text = "Go out there and make our realm proud!"
		elif textPos == 6:
			$ui.hide()
	else:
		$Sprite3D.hide()
		$ui.hide()
		entered = 0
