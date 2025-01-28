extends Control

#region Buttons control

func _on_play_button_pressed() -> void:
	get_tree().change_scene_to_file("res://UI/play_menu.tscn")


func _on_options_button_pressed() -> void:
	get_tree().change_scene_to_file("res://UI/options_menu.tscn")


func _on_credits_button_pressed() -> void:
	get_tree().change_scene_to_file("res://UI/credits_menu.tscn")


func _on_quit_button_pressed() -> void:
	get_tree().quit()

#endregion
