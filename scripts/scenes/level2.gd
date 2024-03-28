extends Node3D

var entered = 0

var pad1enter = false
var pad2enter = false


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

#-----------------------JUMP PADS--------------------#
	if $jumpPads/pad1.has_overlapping_areas():
		pad1enter = true
	if pad1enter == true:
		$Traverser.velocity.y = 10
		await get_tree().create_timer(.1).timeout
		$Traverser.velocity.x = 105
		pad1enter = false
			
	if $jumpPads/pad2.has_overlapping_areas():
		pad2enter = true
	if pad2enter == true:
		$Traverser.velocity.y = 10
		await get_tree().create_timer(.1).timeout
		$Traverser.velocity.x = -100
		entered = 0
		pad2enter = false
