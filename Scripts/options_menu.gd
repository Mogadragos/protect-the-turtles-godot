extends Control

func _ready() -> void:
	$MarginContainer/VBoxContainer/Audio/VBoxContainer/MusicButton.set_pressed_no_signal(!SoundFx.music_muted)
	$MarginContainer/VBoxContainer/Audio/VBoxContainer/SfxButton.set_pressed_no_signal(!SoundFx.sfx_muted)

#region Buttons control

func _on_menu_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
	SoundFx.button_click()

func _on_music_button_toggled(toggled_on: bool) -> void:
	SoundFx.mute_music(!toggled_on)
	SoundFx.button_click()

func _on_sfx_button_toggled(toggled_on: bool) -> void:
	SoundFx.mute_sfx(!toggled_on)
	SoundFx.button_click()

#endregion
