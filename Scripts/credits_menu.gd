extends Control

#region Buttons control

func _on_menu_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
	SoundFx.button_click()

#endregion
