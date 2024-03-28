extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.level == 1:
		if Global.gemsCollected == 3:
			queue_free()
	
	if Global.level == 2:
		if Global.gemsCollected == 6:
			queue_free()

