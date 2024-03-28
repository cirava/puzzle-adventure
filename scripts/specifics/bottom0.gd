extends Area3D
@onready var traverser = $"../Traverser"
@onready var bottom = $"."


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.checkpoint = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if has_overlapping_bodies():
		if Global.checkpoint == 0:
			traverser.global_position.x = 0
			traverser.global_position.y = 1
			traverser.global_position.z = 0
			traverser.global_rotation_degrees.y = 0
		elif Global.checkpoint == 1:
			traverser.global_position.x = 3
			traverser.global_position.y = 4
			traverser.global_position.z = 22
			traverser.global_rotation_degrees.y = 180
		elif Global.checkpoint == 2:
			Global.version = 3
			Global.save_game()
			get_tree().quit()


func _on_piece_3_area_entered(area):
	pass


func _on_piece_3_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	Global.checkpoint = 2
