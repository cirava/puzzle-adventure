extends Node3D

var collected1 = 0
var collected2 = 0
var collected3 = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	$plate/light.hide()
	$plate2/light.hide()
	$plate3/light.hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if collected1 == 1 and collected2 == 1 and collected3 == 1:
		$door.position.y = -50
		$sprite.hide()
		
	if $plate.has_overlapping_areas():
		$plate/light.show()
		collected1 = 1
		
	if $plate2.has_overlapping_areas():
		$plate2/light.show()
		collected2 = 1
		
	if $plate3.has_overlapping_areas():
		$plate3/light.show()
		collected3 = 1
