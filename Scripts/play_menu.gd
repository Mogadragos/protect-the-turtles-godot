extends Control

#region Buttons control

func _on_menu_button_pressed() -> void:
	get_tree().change_scene_to_file("res://UI/main_menu.tscn")

#endregion
