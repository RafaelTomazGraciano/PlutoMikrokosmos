extends Camera2D

var magnitude = 0
var timeleft = 0
var is_shaking = false

func shake(new_magitude, lifetime):
	if magnitude > new_magitude:
		return
	
	magnitude = new_magitude
	timeleft = lifetime
	
	if is_shaking:
		return
	is_shaking = true
	
	while timeleft > 0:
		var pos = Vector2()
		pos.x = randf_range(-magnitude, magnitude)
		pos.y = randf_range(-magnitude, magnitude)
		position = pos
		
		timeleft -= get_process_delta_time()
		await get_tree().process_frame
	
	magnitude = 0
	is_shaking = false
	position = Vector2(0,0)
	
