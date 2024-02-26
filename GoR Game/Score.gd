extends Label

func _process(_delta):
	self.text = str(Scene.score)

func _on_first_button_pressed():
	Scene.score += 1

func _on_gold_button_pressed():
	Scene.score += 1
