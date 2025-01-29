extends Node

var activeVersion: Node;

func _ready():
	activeVersion = $V1;

func button_click():
	activeVersion.get_node("ButtonClick").play();
