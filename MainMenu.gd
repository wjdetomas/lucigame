extends Node



func _on_start_button_pressed() -> void:
	var next_scene = load("res://GameScreen.tscn")
	get_tree().change_scene_to_packed(next_scene) # Replace with function body.
