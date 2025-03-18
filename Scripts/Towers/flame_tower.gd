extends StaticBody2D

var Bullet = preload("res://Scenes/Gameplay/Towers/FlameTowerBullet.tscn")
var bulletDamage = 5
var pathName
var currTargets = []
var currTarget


func _on_tower_body_entered(body: Node2D) -> void:
	if "Enemy" in body.name:
		currTargets.push_back(body)
		currTarget = currTargets[0]
		
	pass # Replace with function body.


func _on_tower_body_exited(body: Node2D) -> void:
	if "Enemy" in body.name:
		currTargets.remove_at(0)
		currTarget = currTargets[0]
		
	pass # Replace with function body.
