extends Label
var score = 0

func _process(_delta):
	self.text = str(Scene.score)

func _on_first_button_pressed():
	Scene.score += 1

func _on_gold_button_pressed():
	Scene.score += 1

var SAVEFILE = "user://savefile.save"

func save_score():
	var file = FileAccess.open(SAVEFILE, FileAccess.WRITE_READ)
	file.store_32(score)

func load_score():
	var file = FileAccess.open(SAVEFILE, FileAccess.READ)
	if FileAccess.file_exists(SAVEFILE):
		score = file.get_32()
