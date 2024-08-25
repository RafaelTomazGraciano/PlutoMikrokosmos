extends Area2D


var velocity = Vector2(0, 300)

func _process(delta: float) -> void:
	translate(velocity * delta)
	if position.y >= get_viewport_rect().size.y + 15:
		queue_free()

func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("ship"):
		Audio.Powerup()
		area.armor += 1
		queue_free()
