extends Area2D

@export var velocity := Vector2.ZERO

const scene_explosion = preload("res://scenes/explosion.tscn")

#variable with get and set
@export var armor := 2:
	set(value):
		armor = value
		if  armor <= 0:
			create_explosion()
	get:
		return armor


func _ready() -> void:
	add_to_group("enemy")


func _process(delta: float) -> void:
	translate(velocity * delta)


	if position.y-16 >= get_viewport_rect().size.y:
		queue_free()


func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("ship"):
		area.armor -= 1
		queue_free()


func create_explosion():
	var explosion = scene_explosion.instantiate()
	#set_process(false)
	explosion.position = $sprite.position
	add_child(explosion)
	await get_tree().create_timer(0.7).timeout
	queue_free()
