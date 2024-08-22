extends Node



func _ready() -> void:
	$explosion.play("explosion")
	$fire.emitting = true
	$smoke.emitting = true
	
	var camera = get_node("/root/main/camera")
	camera.shake(8.0, 0.2)
