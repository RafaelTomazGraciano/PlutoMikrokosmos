extends Node



func _ready() -> void:
	$explosion.play("explosion")
	$fire.emitting = true
	$smoke.emitting = true
	$AnimationPlayer.play("fade out")
	Audio.explosion()
	var camera = get_node("/root/main/camera")
	camera.shake(10.0, 0.2)
	
	await get_tree().create_timer(0.7).timeout
	queue_free()
