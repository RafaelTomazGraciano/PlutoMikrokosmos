extends Node

const filepath = "user://bestscore.data"
var bestscore = 0:
	set(new_value):
		bestscore = new_value
		save_bestscore()

func _ready() -> void:
	load_bestscore()

func load_bestscore():
	var file = FileAccess.open(filepath, FileAccess.READ)
	if not FileAccess.file_exists(filepath):
		return
	bestscore = file.get_var()
	file.close()

func save_bestscore():
	var file = FileAccess.open(filepath, FileAccess.WRITE)
	file.store_var(bestscore)
	file.close()
