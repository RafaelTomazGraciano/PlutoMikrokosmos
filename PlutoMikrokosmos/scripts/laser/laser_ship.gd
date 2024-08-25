extends Area2D

@export var velocity = Vector2.ZERO
const scene_flare = preload("res://scenes/laser/flare.tscn")

func _ready() -> void:
	create_flare()
	Audio.LaserShip()

func _process(delta: float) -> void:
	translate(velocity*delta)


func create_flare():
	var flare = scene_flare.instantiate()
	flare.position = global_position
	get_node("/root/main").add_child(flare)
 

func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()


func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("enemy"):
		Audio.HitEnemy()
		area.armor -= 1
		create_flare()
		var camera = get_node("/root/main/camera")
		camera.shake(5.0, 0.13)
		queue_free()
