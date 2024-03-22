extends Node2D
func _process(_delta):
	self.text = str(Scene.score)


func _on_button_pressed():
	Scene.score += 1
