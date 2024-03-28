extends Area3D

var collected = false

# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.version == 3:
		$OmniLight3D.light_energy(2)
	else:
		pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotate_y(deg_to_rad(5))
	if has_overlapping_areas() and collected == false:
		$pieceGet.play()
		hide()
		Global.piecesCollected = Global.piecesCollected + 1
		collected = true
