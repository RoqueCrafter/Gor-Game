extends Node2D




func _on_button_pressed():
	get_tree().change_scene_to_file("res://accessories_menu.tscn")


func _on_return_options_pressed():
	get_tree().change_scene_to_file("res://Main_Menu.tscn")
