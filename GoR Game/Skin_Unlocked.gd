extends AudioStreamPlayer



var until_next_play = 10
var i = 2
func _on_first_button_pressed():
	if (Scene.score == until_next_play):
		play()
		until_next_play += 10 * i
		i += 1
