extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	StateCheck()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func StateCheck():
	#SPAWN PIECES
	if Lvl1State.piece1 == 0:
		$spawn/piece.queue_free()
	if Lvl1State.piece2 == 0:
		$spawn/piece2.queue_free()
	if Lvl1State.piece3 == 0:
		$spawn/piece3.queue_free()
	if Lvl1State.piece4 == 0:
		$pieces/piece.queue_free()
	if Lvl1State.piece5 == 0:
		$pieces/piece2.queue_free()
	if Lvl1State.piece6 == 0:
		$pieces/piece3.queue_free()
	if Lvl1State.piece7 == 0:
		$pieces/piece4.queue_free()
	if Lvl1State.piece8 == 0:
		$pieces/piece5.queue_free()
	if Lvl1State.piece9 == 0:
		$pieces/piece6.queue_free()
	if Lvl1State.piece10 == 0:
		$pieces/piece7.queue_free()
	if Lvl1State.piece11 == 0:
		$pieces/piece8.queue_free()
	if Lvl1State.piece12 == 0:
		$pieces/piece9.queue_free()
	if Lvl1State.piece13 == 0:
		$pieces/piece10.queue_free()
	if Lvl1State.piece14 == 0:
		$pieces/piece11.queue_free()
	if Lvl1State.piece15 == 0:
		$pieces/piece12.queue_free()
	if Lvl1State.piece16 == 0:
		$pieces/piece13.queue_free()
	if Lvl1State.piece17 == 0:
		$pieces/piece14.queue_free()
	if Lvl1State.piece18 == 0:
		$pieces/piece15.queue_free()
	if Lvl1State.piece19 == 0:
		$pieces/piece16.queue_free()
	if Lvl1State.piece20 == 0:
		$pieces/piece17.queue_free()
	if Lvl1State.piece21 == 0:
		$pieces/piece18.queue_free()
	if Lvl1State.piece22 == 0:
		$pieces/piece19.queue_free()
	if Lvl1State.piece23 == 0:
		$pieces/piece20.queue_free()
	if Lvl1State.piece24 == 0:
		$pieces/piece21.queue_free()
	if Lvl1State.piece25 == 0:
		$pieces/piece22.queue_free()
	if Lvl1State.piec26 == 0:
		$pieces/piece23.queue_free()
	if Lvl1State.piece27 == 0:
		$pieces/piece24.queue_free()
	if Lvl1State.piece28 == 0:
		$pieces/piece25.queue_free()
	if Lvl1State.piece29 == 0:
		$pieces/piece26.queue_free()
	if Lvl1State.piece30 == 0:
		$pieces/piece27.queue_free()
	if Lvl1State.piece31 == 0:
		$pieces/piece28.queue_free()
	if Lvl1State.piece32 == 0:
		$pieces/piece29.queue_free()
	if Lvl1State.piece33 == 0:
		$pieces/piece30.queue_free()
	if Lvl1State.piece34 == 0:
		$pieces/piece31.queue_free()
	if Lvl1State.piece35 == 0:
		$pieces/piece32.queue_free()
	if Lvl1State.piece36 == 0:
		$pieces/piece33.queue_free()
	if Lvl1State.piece37 == 0:
		$pieces/piece34.queue_free()
	if Lvl1State.piece38 == 0:
		$pieces/piece35.queue_free()
		
	#GEMS
	if Lvl1State.gem1 == 0:
		$gems/piece.queue_free()
	if Lvl1State.gem2 == 0:
		$gems/piece2.queue_free()
	if Lvl1State.gem3 == 0:
		$gems/piece3.queue_free()
			
	#PLATES

func _on_piece_area_entered(area):
	pass # Replace with function body.

func _on_piece_2_area_entered(area):
	pass # Replace with function body.

func _on_piece_3_area_entered(area):
	pass # Replace with function body.
