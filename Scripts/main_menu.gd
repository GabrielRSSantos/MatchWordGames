extends Control

var credits = preload("res://Scenes/credits.tscn")

func _on_leave_pressed() -> void:
	get_tree().quit()

func _on_start_game_pressed() -> void:
	get_node("/root/Autoload/Selected").play()
	get_tree().change_scene_to_file("res://Scenes/main_2.tscn")

func _on_configuration_pressed() -> void:
	get_node("/root/Autoload/Selected").play()
	Autoload.load_config_screen()

func _on_credits_pressed() -> void:
	get_node("/root/Autoload/Selected").play()
	var credit_node = credits.instantiate()
	add_child(credit_node)
