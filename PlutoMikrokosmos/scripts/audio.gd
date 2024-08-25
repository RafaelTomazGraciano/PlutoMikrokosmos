extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Music.playing = true

func explosion():
	$Explosion.playing = true

func HitEnemy():
	$HitEnemy.playing = true

func HitShip():
	$HitShip.playing = true

func LaserEnemy():
	$LaserEnemy.playing = true

func LaserShip():
	$LaserShip.playing = true

func Powerup():
	$Powerup.playing = true
