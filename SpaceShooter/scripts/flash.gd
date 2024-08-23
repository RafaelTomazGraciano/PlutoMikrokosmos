extends Sprite2D

func _ready() -> void:
	$AnimationPlayer.play("fade_out")
	await get_tree().create_timer(0.4).timeout
	queue_free()
