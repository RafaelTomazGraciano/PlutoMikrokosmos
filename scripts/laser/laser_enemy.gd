extends Area2D

@export var velocity = Vector2.ZERO
const scene_flare = preload("res://scenes/laser/flare.tscn")

func _ready() -> void:
	set_process(false)
	create_flare()
	

func _process(delta: float) -> void:
	translate(velocity*delta)


func create_flare():
	var flare = scene_flare.instantiate()
	flare.position = $sprite.position
	add_child(flare)
	set_process(true)
 


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()


func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("ship"):
		area.armor -= 1
		create_flare()
		queue_free()
