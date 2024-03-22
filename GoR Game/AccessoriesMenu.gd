extends Node2D


func _on_return_accessories_menu_pressed():
	get_tree().change_scene_to_file("res://options.tscn")


func _on_sunglasses_toggled(toggled_on):
	$Sunglasses.visible
