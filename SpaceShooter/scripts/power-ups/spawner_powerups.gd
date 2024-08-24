extends Node2D

var powerups = [
	preload("res://scenes/power-ups/heart_recharge.tscn"),
	preload("res://scenes/power-ups/power_up.tscn"),
	preload("res://scenes/power-ups/shield.tscn")
]

func _ready() -> void:
	$Timer.wait_time = randf_range(5.0, 7.0)
	$Timer.connect("timeout",Callable(self, "_on_Timer_timeout"))
	$Timer.start()

func _on_Timer_timeout():
	randomize()
	powerups.shuffle()
	var powerup = powerups[0].instantiate()
	var pos := Vector2.ZERO 
	pos.x = randf_range(30, get_viewport().get_visible_rect().size.x - 30)
	pos.y = -15
	powerup.position = pos
	get_node("container").add_child(powerup)
	$Timer.wait_time = randf_range(5.0, 7.0)
