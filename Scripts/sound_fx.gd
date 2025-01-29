extends Node

var _activeVersion: Node;
var music_muted = false;
var sfx_muted = false;

func _ready():
	_activeVersion = $V1;
	
func button_click() -> void:
	_activeVersion.get_node("ButtonClick").play();
	
func mute_music(muted: bool) -> void:
	music_muted = muted;
	_toggle_bus(AudioServer.get_bus_index("Music"), music_muted);
	
func mute_sfx(muted: bool) -> void:
	sfx_muted = muted;
	_toggle_bus(AudioServer.get_bus_index("SFX"), sfx_muted);

func _toggle_bus(bus: int, muted: bool) -> void:
	AudioServer.set_bus_mute(bus, muted);
