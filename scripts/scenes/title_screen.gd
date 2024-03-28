extends Node3D
var uiOption = 0

func _ready():
	Global.load_game()
	
	$interface/ExtrasErr.hide()
	$interface/options.hide()
	
	Global.paused = 0
	
	if Global.version == 3 or Global.version == 4:
		pass
	else:
		$music.play()
		
	if Global.played == 0:
		$interface/main/Play.hide()
		$interface/main/Options.hide()
		$interface/main/Extras.hide()
		$interface/main/Quit.hide()
	else:
		$interface/ChangeLog.hide()
	if Global.version == 1:
		$interface/ChangeLog/RichTextLabel.append_text("[p] Hello testers! [/p] 
		[p] This is where you'll see me talk about changes and additions and such. [/p] 
		[p] Changes on 7/13/00: [/p] 
		[ul]       Added a pause menu 
		Finally finished the third world
		Fixed issue with gem and piece collection
		Tweaked gravity for better jump feel
		And more! [/ul]")
	elif Global.version == 2:
		pass
	elif Global.version == 3:
		$interface/ChangeLog/RichTextLabel.text = "I'm done. Anything else you'll need already here."
	elif Global.version == 4:
		$interface/ChangeLog.hide()
	

func _process(delta):
	pass

func _on_play_pressed():
	$uiYes.play()
	await get_tree().create_timer(0.5).timeout
	Global.played = 1
	if Global.version == 1:
		get_tree().change_scene_to_file("res://scenes/loading_screen1.tscn")

func _on_quit_pressed():
	$uiYes.play()
	await get_tree().create_timer(0.5).timeout
	get_tree().quit()

func _on_extras_pressed():
	$uiYes.play()
	if Global.gemsCollected == 11:
		await get_tree().create_timer(0.5).timeout
	else:
		$interface/ExtrasErr.show()
		await get_tree().create_timer(5).timeout
		$interface/ExtrasErr.hide()

func _on_options_pressed():
	$uiYes.play()
	$interface/main.hide()
	$interface/options.show()


func _on_button_pressed():
	$uiYes.play()
	$interface/ChangeLog.hide()
	$interface/main/Quit.show()
	$interface/main/Options.show()
	$interface/main/Play.show()
	$interface/main/Extras.show()

func _on_clear_save_pressed():
	$uiYes.play()
	await get_tree().create_timer(0.5).timeout
	Global.gemsCollected = 0
	Global.piecesCollected = 0
	Global.version = 1
	Global.save_game()
	get_tree().quit()


func _on_back_pressed():
	$uiYes.play()
	$interface/options.hide()
	$interface/main.show()
