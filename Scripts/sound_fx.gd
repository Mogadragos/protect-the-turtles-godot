extends Node

var _activeVersion: Node;
var music_muted = false;
var sfx_muted = false;

func _ready():
	_activeVersion = $V1;
	
func button_click() -> void:
	_activeVersion.get_node("ButtonClick").play();
	
func toggle_music(toggled_on: bool) -> void:
	music_muted = !toggled_on;
	_toggle_bus(AudioServer.get_bus_index("Music"), music_muted);
	
func toggle_sfx(toggled_on: bool) -> void:
	sfx_muted = !toggled_on;
	_toggle_bus(AudioServer.get_bus_index("SFX"), sfx_muted);
	
func is_music_active() -> bool:
	return _is_bus_active(AudioServer.get_bus_index("Music"));
	
func is_sfx_active() -> bool:
	return _is_bus_active(AudioServer.get_bus_index("SFX"));
	
func _toggle_bus(bus: int, muted: bool) -> void:
	AudioServer.set_bus_mute(bus, muted);
	
func _is_bus_active(bus: int) -> bool:
	return AudioServer.get_bus_volume_db(bus) != 0;
