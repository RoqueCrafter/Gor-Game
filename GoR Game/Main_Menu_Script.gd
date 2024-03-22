extends Node2D


func _on_play_button_button_down():
	get_tree().change_scene_to_file("res://THE_BUTTON.tscn")


func _on_options_button_pressed():
	get_tree().change_scene_to_file("res://options.tscn")


func _on_quit_button_pressed():
	get_tree().quit()

var SAVEFILE = "user://savefile.save"

func save_score():
	var file = FileAccess.open(SAVEFILE, FileAccess.WRITE_READ)
	file.store_32(Scene.score)

func load_score():
	var file = FileAccess.open(SAVEFILE, FileAccess.READ)
	if FileAccess.file_exists(SAVEFILE):
		Scene.score = file.get_32()

func _ready():
	load_score()
