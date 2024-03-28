extends Area3D

var collected = false

# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.version == 3:
		queue_free()
	else:
		pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotate_y(deg_to_rad(2.5))
	if has_overlapping_areas() and collected == false:
		$pieceReady.play()
		Global.gemsCollected = Global.gemsCollected + 1
		hide()
		collected = true
	else:
		pass
