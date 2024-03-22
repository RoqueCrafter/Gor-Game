extends Sprite2D

#When the sunglasses button on the skin menu is clicked, this appears (The skin menu is still non-existent)
func _on_sunglasses_toggled(_toggled_on):
	$Sunglasses.visible
