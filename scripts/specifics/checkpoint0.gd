extends Area3D


# Called when the node enters the scene tree for the first time.
func _ready():
	$flagGet.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if has_overlapping_bodies():
		if Global.checkpoint == 1:
			pass
		else:
			$AudioStreamPlayer.play()
		$flagGet.show()
		$flagNeu.hide()
		Global.checkpoint = 1
