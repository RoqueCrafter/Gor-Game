extends Node2D

var score = 0


func _on_button_pressed():
	get_tree().change_scene_to_file("res://Main_Menu.tscn")

func _ready():
	load_score()

func _on_first_button_pressed():
	score =+ 1

func _on_gold_button_pressed():
	score =+ 5

var SAVEFILE = "user://savefile.save"

func save_score():
	var file = FileAccess.open(SAVEFILE, FileAccess.WRITE_READ)
	file.store_32(score)

func load_score():
	var file = FileAccess.open(SAVEFILE, FileAccess.READ)
	if FileAccess.file_exists(SAVEFILE):
		score = file.get_32()




