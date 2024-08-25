extends Node2D


@export var velocity = Vector2()

func _process(delta: float) -> void:
	translate(velocity * delta)
	
	if position.y >= get_viewport_rect().size.y:
		position = (Vector2(0, -360))
