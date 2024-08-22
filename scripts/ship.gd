extends Area2D

var speed := 400  # speed of the ship
var player_position := Vector2.ZERO  # ship position
const scene_laser = preload("res://scenes/laser/laser_ship.tscn")
const scene_explosion = preload("res://scenes/explosion.tscn")
const  scene_flash = preload("res://scenes/flash.tscn")

#variable with get and set
@export var armor := 4:
	set(value):
		if value < armor:
			var flash = scene_flash.instantiate()
			add_child(flash)
			
		armor = value
		if  armor <= 0:
			create_explosion()
	get:
		return armor


func _ready() -> void:
	$ship.play("default")
	# initialize with the ship position
	player_position = $ship.position 
	
	$Timer.wait_time = 0.5
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
	$ship.position = player_position 


func shoot():
	var pos_left = get_node("ship/cannons/left").global_position
	var pos_right = get_node("ship/cannons/right").global_position
	create_laser(pos_left)
	create_laser(pos_right)


func create_laser(pos):
	var laser = scene_laser.instantiate()
	laser.position = pos
	add_child(laser)


func create_explosion():
	var explosion = scene_explosion.instantiate()
	explosion.position = player_position
	add_child(explosion)
	await get_tree().create_timer(0.5).timeout
	queue_free()
