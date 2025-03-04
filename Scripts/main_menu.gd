extends Control

#region Buttons control

func _on_play_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/UI/play_menu.tscn")
	SoundFx.button_click()

func _on_options_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/UI/options_menu.tscn")
	SoundFx.button_click()

func _on_credits_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/UI/credits_menu.tscn")
	SoundFx.button_click()

func _on_quit_button_pressed() -> void:
	get_tree().quit()

#endregion
