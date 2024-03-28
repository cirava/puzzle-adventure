extends AudioStreamPlayer


# Called when the node enters the scene tree for the first time.
func _ready():
	volume_db = -2
	play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.paused == 1:
		volume_db = -10
	else:
		volume_db = -2


func _on_finished():
	play()
