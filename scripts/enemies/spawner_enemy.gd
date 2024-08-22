extends Node2D

var enemies = [
	preload("res://scenes/enemies/blue_enemy.tscn"),
	preload("res://scenes/enemies/red_enemy.tscn")
]

func _ready() -> void:
	$Timer.wait_time = randi_range(1, 3)
	$Timer.connect("timeout",Callable(self, "_on_Timer_timeout"))
	$Timer.start()

func _on_Timer_timeout():
	randomize()
	enemies.shuffle()
	var enemy = enemies[0].instantiate()
	var pos := Vector2.ZERO 
	pos.x = randi_range(40, get_viewport().get_visible_rect().size.x -40)
	pos.y = -40
	enemy.position = pos
	get_node("container").add_child(enemy)
