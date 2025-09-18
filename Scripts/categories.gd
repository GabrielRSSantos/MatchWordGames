extends Control

@onready var button_heroes: Button = $GridContainer/Heroes

@onready var label_2: Label = $GridContainer/Heroes/VBoxContainer/Label2
@onready var label_series_2: Label = $GridContainer/Series/VBoxContainer/Label2
@onready var label_frutas_2: Label = $GridContainer/Frutas/VBoxContainer/Label2
@onready var label_pais_2: Label = $GridContainer/Pais/VBoxContainer/Label2
@onready var label_todos_2: Label = $GridContainer/Todos/VBoxContainer/Label2

@onready var total_finished = (
	Autoload.finished_challenges["Herois"].size() + 
	Autoload.finished_challenges["Series"].size() + 
	Autoload.finished_challenges["Frutas"].size() +
	Autoload.finished_challenges["Pais"].size()
	)

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("S"):
		print("MAP: ", Autoload.map)
	if Input.is_action_just_pressed("A"):
		print("FINISHED: ", Autoload.finished_challenges)

func _ready() -> void:
	label_2.text = str(Autoload.finished_challenges["Herois"].size()) + "/" + str(Autoload.total_herois)
	label_series_2.text = str(Autoload.finished_challenges["Series"].size()) + "/" + str(Autoload.total_series)
	label_frutas_2.text = str(Autoload.finished_challenges["Frutas"].size()) + "/" + str(Autoload.total_frutas)
	label_pais_2.text = str(Autoload.finished_challenges["Pais"].size()) + "/" + str(Autoload.total_pais)
	label_todos_2.text = str(total_finished) + "/" + str(Autoload.total)

func _on_main_menu_pressed() -> void:
	update_count()
	get_node("/root/Autoload/Selected").play()
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")

func default_pressed_button(category) -> void:
	get_node("/root/Autoload/Selected").play()
	get_node("/root/Main2").assigned_category = category
	get_node("/root/Main2").node_reload_current_scene()
	visible = false

func update_count() -> void:
	label_2.text = str(Autoload.finished_challenges["Herois"].size()) + "/" + str(Autoload.total_herois)
	label_series_2.text = str(Autoload.finished_challenges["Series"].size()) + "/" + str(Autoload.total_series)
	label_frutas_2.text = str(Autoload.finished_challenges["Frutas"].size()) + "/" + str(Autoload.total_frutas)
	label_pais_2.text = str(Autoload.finished_challenges["Pais"].size()) + "/" + str(Autoload.total_pais)
	label_todos_2.text = str(total_finished) + "/" + str(Autoload.total)

func _on_heroes_pressed() -> void:
	default_pressed_button("Herois")
func _on_series_pressed() -> void:
	default_pressed_button("Series")
func _on_frutas_pressed() -> void:
	default_pressed_button("Frutas")
func _on_todos_pressed() -> void:
	default_pressed_button("All")
func _on_reset_pressed() -> void:
	get_node("/root/Autoload/Selected").play()
	Autoload.reset_progress()
	get_tree().reload_current_scene()
