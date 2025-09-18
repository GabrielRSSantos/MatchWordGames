extends Control

@onready var next: Button = $VBoxContainer/HBoxContainer/Next
var node_categories = null

func _ready() -> void:
	node_categories = get_node("../Categories")

func _on_next_pressed() -> void:
	get_node("/root/Autoload/Selected").play()
	get_node("/root/Main2").node_reload_current_scene()
	queue_free()

func _on_menu_pressed() -> void:
	node_categories.visible = true
	node_categories.update_count()
	get_node("/root/Main2").node_reload_current_scene()
	queue_free()
