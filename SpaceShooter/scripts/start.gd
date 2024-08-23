extends Node



func _ready() -> void:
	$text_score/Label.text = str(Game.bestscore)


func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main.tscn")


func _on_how_to_play_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/tips.tscn")

func _on_quit_pressed() -> void:
	get_tree().quit()
