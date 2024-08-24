extends Node2D

var enemies = [
	preload("res://scenes/enemies/blue_enemy.tscn"),
	preload("res://scenes/enemies/red_enemy.tscn")
]

var spawn_timer = Timer.new()
var spawn_time = 3.0
var decrement_rate = 0.2 

func _ready() -> void:
	add_child(spawn_timer)
	spawn_timer.wait_time = randf_range(1.0, spawn_time)
	spawn_timer.connect("timeout", Callable(self, "_on_spawn_enemy"))
	spawn_timer.start()

func _on_spawn_enemy():
	randomize()
	enemies.shuffle()
	var enemy = enemies[0].instantiate()
	var pos := Vector2.ZERO 
	pos.x = randf_range(40, get_viewport().get_visible_rect().size.x -40)
	pos.y = -40
	enemy.position = pos
	get_node("container").add_child(enemy)
	adjust_spawn_time()


func adjust_spawn_time():
	var score = get_node("/root/main/text_score").score
	spawn_time = max(1.3, spawn_time - (score / 1000.0))
	spawn_timer.wait_time = spawn_time
