extends Area2D

var speed := 400  # speed of the ship
var player_position := Vector2.ZERO  # ship position
const scene_laser = preload("res://scenes/laser/laser_ship.tscn")
const scene_explosion = preload("res://scenes/explosion.tscn")
const  scene_flash = preload("res://scenes/flash.tscn")

#variable of life with get and set
@export var armor := 4:
	set(value):
		if shield:
			return
		
		if value > 4:
			return
		
		if value < armor:
			var flash = scene_flash.instantiate()
			get_node("/root/main").add_child(flash)
			
		armor = value
		emit_signal("armor_changed", armor)
		if  armor <= 0:
			create_explosion()
			await get_tree().process_frame
			get_tree().change_scene_to_file("res://scenes/game_over.tscn")
			queue_free()
	get:
		return armor


var is_triple_shooting = false:
	set(new_value):
		is_triple_shooting = new_value
		$Timer.wait_time = 0.25
		await get_tree().create_timer(5.0).timeout
		is_triple_shooting = false
		$Timer.wait_time = 0.5


var shield = false:
	set(new_value):
		shield = new_value
		if shield:
			$shield.visible = true
			await get_tree().create_timer(4.0).timeout
			shield = false
			$shield.visible = false


signal armor_changed

func _ready() -> void:
	$ship.play("default")
	# initialize with the ship position
	player_position = position 
	
	
	$Timer.connect("timeout",Callable(self, "shoot"))
	$Timer.start()
	
	add_to_group("ship")


func _process(delta: float) -> void:
	var velocity := Vector2.ZERO
	
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
		$ship.play("flying")
	elif Input.is_action_pressed("ui_left"):
		velocity.x -= 1
		$ship.play("flying")
	else:
		$ship.play("default")

	# update de position
	player_position += velocity.normalized() * speed * delta

	# Clamping to view
	var view_size = get_viewport_rect().size
	player_position.x = clamp(player_position.x, 40, view_size.x - 40)
	
	# new position
	position = player_position 


func shoot():
	var pos_left = get_node("ship/cannons/left").global_position
	var pos_right = get_node("ship/cannons/right").global_position
	create_laser(pos_left)
	create_laser(pos_right)
	
	if is_triple_shooting:
		var pos_center = get_node("ship/cannons/center").global_position
		create_laser(pos_center)


func create_laser(pos):
	var laser = scene_laser.instantiate()
	laser.position = pos
	get_node("/root/main").add_child(laser)



func create_explosion():
	var explosion = scene_explosion.instantiate()
	explosion.position = player_position
	get_node("/root/main").add_child(explosion)
