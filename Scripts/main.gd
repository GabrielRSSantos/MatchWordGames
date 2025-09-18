extends Node2D

@export var challenge : String
@onready var marker_2d: Marker2D = $SlotsSpawn
@onready var letter_spawn: Marker2D = $LetterSpawn
@onready var slots: Node2D = $Slots

@onready var slot = preload("res://Scenes/slot.tscn")
@onready var item = preload("res://Scenes/item.tscn")

var slots_map = {}

func _ready() -> void:
	slots_spawn()
	letters_spawn_func()

func slots_spawn() -> void:
	for i in challenge.length():
		var new_slot = slot.instantiate()
		#new_slot.position = Vector2(marker_2d.position.x + (i * 100), marker_2d.position.y)
		new_slot.letra_certa = challenge[i]
		new_slot.name = str(i)
		slots_map[i] = { 
			"is_correct": new_slot.is_correct,
			"has_letter": new_slot.has_letter
		}
		new_slot.connect("is_letter_correct", _slot_on_letter_correct)
		new_slot.connect("slot_has_letter", _slot_has_letter)
		
		var new_panel = PanelContainer.new()
		new_panel.add_child(new_slot)
		$CanvasLayer/VBoxContainer/HBoxContainer.add_child(new_panel)

func letters_spawn_func() -> void:
	var shuffled = shuffle_string(challenge)
	for i in shuffled.length():
		var new_item = item.instantiate()
		new_item.get_child(0).text = shuffled[i]
		new_item.position = Vector2(letter_spawn.position.x + (i * 70), letter_spawn.position.y)
		new_item.original_position = new_item.position
		var new_panel = PanelContainer.new()
		new_panel.add_child(new_item)
		
		$CanvasLayer/VBoxContainer/HBoxContainer2.add_child(new_panel)

func shuffle_string(text: String) -> String:
	var random_text : Array = text.split("")
	random_text.shuffle()
	return "".join(random_text)

func _slot_on_letter_correct(name, is_correct) -> void:
	var index = name.to_int()
	slots_map[index].is_correct = is_correct
	if !check_all_slots_has_letter():
		paint_all_slots_to_white()

func _slot_has_letter(name, has_letter) -> void:
	var index = name.to_int()
	slots_map[index].has_letter = has_letter
	if check_all_slots_has_letter():
		if all_slots_has_correct_letter():
			paint_all_slots_to_green()
		else:
			paint_all_slots_to_red()

func paint_all_slots_to_red() -> void:
	for i in slots.get_children():
		i.get_child(1).self_modulate = "ff0000"

func paint_all_slots_to_green() -> void:
	for i in slots.get_children():
		i.get_child(1).self_modulate = "00ff00"

func paint_all_slots_to_white() -> void:
	for i in slots.get_children():
		if i.has_letter:
			i.get_child(1).self_modulate = "ffff00"
		else:
			i.get_child(1).self_modulate = "ffffff"

func check_all_slots_has_letter() -> bool:
	var check = false
	for i in slots_map:
		if slots_map[i].has_letter:
			check = true
		else:
			return false
	return check

func all_slots_has_correct_letter() -> bool:
	var check = false
	for i in slots_map:
		if slots_map[i].is_correct:
			check = true
		else:
			return false
	return check
