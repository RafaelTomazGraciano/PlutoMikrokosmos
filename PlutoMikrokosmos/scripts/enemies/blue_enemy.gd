extends Area2D

@export var velocity := Vector2.ZERO

const scene_laser = preload("res://scenes/laser/laser_enemy.tscn")
const scene_explosion = preload("res://scenes/explosion.tscn")

#variable with get and set
@export var armor := 6:
	set(value):
		armor = value
		if  armor <= 0:
			get_node("/root/main/text_score").score += 10
			create_explosion()
			queue_free()
	get:
		return armor

func _ready() -> void:
	var array := [velocity.x, -velocity.x] #array with the velocity
	array.shuffle()
	velocity.x = array[0] #choose velocity between positive and negative
	
	#time to shoot
	$Timer.wait_time = 1.5
	$Timer.connect("timeout",Callable(self, "shoot"))
	$Timer.start()
	
	add_to_group("enemy")

func _process(delta: float) -> void:
	translate(velocity * delta)
	if position.y-16 >= get_viewport_rect().size.y:
		queue_free()
	
	#bouncing on edges
	if position.x <= 40:
		velocity.x = abs(velocity.x)
	if position.x >= get_viewport().get_visible_rect().size.x - 40:
		velocity.x = -abs(velocity.x)


func shoot():
	var laser = scene_laser.instantiate()
	laser.position = get_node("cannon").global_position
	get_node("/root/main").add_child(laser)


func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("ship"):
		Audio.HitShip()
		area.armor -= 1
		queue_free()


func create_explosion():
	var explosion = scene_explosion.instantiate()
	explosion.position = position
	get_node("/root/main").add_child(explosion)
