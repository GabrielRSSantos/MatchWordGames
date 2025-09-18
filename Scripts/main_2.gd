extends Node2D

@onready var challenge : String
@onready var slots: HBoxContainer = $CanvasLayer/Control/MainContainer/Slots
@onready var letters: GridContainer = $CanvasLayer/Control/MainContainer/Letters

@onready var slot = preload("res://Scenes/slot.tscn")
@onready var item = preload("res://Scenes/item.tscn")

var assigned_category = null
var finished_category = null
var finished_key = null
var finished_key_values = null

func node_reload_current_scene() -> void:
	clean_game()
	randomize()
	var category = assigned_category
	
	if category == "All":
		var categories = Autoload.map.keys()
		category = categories[randi() % categories.size()]  
	var get_category : Dictionary = Autoload.map[category]
	finished_category = category
	
	if get_category.keys().is_empty():
		$CanvasLayer/Categories.visible = true
		$CanvasLayer/Categories.update_count()
		return
	var keys = get_category.keys()  # Pega todas as chaves: ["Batman", "Super-man"]
	var random_key = keys[randi() % keys.size()]  # Escolhe uma chave aleatória
	finished_key = random_key
	finished_key_values = get_category.get(random_key)
	
	var tips = get_category[random_key]
	challenge = random_key
	write_tips(tips, 3)
	slots_spawn()
	letters_spawn_func()

func clean_game() -> void:
	for child_slot in $CanvasLayer/Control/MainContainer/Slots.get_children():
		child_slot.queue_free()
	for child_letter in $CanvasLayer/Control/MainContainer/Letters.get_children():
		child_letter.queue_free()
	for child_tip in $CanvasLayer/Control/MainContainer/Tips.get_children():
		child_tip.queue_free()
		
func slots_spawn() -> void:
	for i in challenge.length():
		var new_slot = slot.instantiate()
		new_slot.letra_certa = challenge[i]
		new_slot.name = str(i)
		new_slot.connect("check_fields", check_fields)
		$CanvasLayer/Control/MainContainer/Slots.add_child(new_slot)

func letters_spawn_func() -> void:
	var shuffled = shuffle_string(challenge)
	var add_more_letters = shuffled + shuffle_string(get_random_string(5))
	var add_more_letters_shuffled = shuffle_string(add_more_letters)
	for i in add_more_letters_shuffled.length():
		var new_item = item.instantiate()
		new_item.get_child(0).text = add_more_letters_shuffled[i]
		new_item.original_position = new_item.position
		new_item.connect("check_fields_from_item", check_fields)
		$CanvasLayer/Control/MainContainer/Letters.add_child(new_item)

func shuffle_string(text: String) -> String:
	var random_text : Array = text.split("")
	random_text.shuffle()
	return "".join(random_text)

func check_fields() -> void:
	print("CHECKING FIELDS")
	$CanvasLayer/Control/Drop.play()
	var slots = $CanvasLayer/Control/MainContainer/Slots.get_children()
	if all_slots_has_value(slots):
		if is_all_correct(slots):
			change_slots_color(slots, "GREEN")
			Autoload.finished_challenges[finished_category][finished_key] = finished_key_values
			Autoload.map[finished_category].erase(finished_key)
			end_game()
			return
		else:
			change_slots_color(slots, "RED")
			return
	change_slots_color(slots, "DEFAULT")

func all_slots_has_value(slots) -> bool:
	for i in slots:
		if i.get_child_count() < 2:
			return false
	return true

func is_all_correct(slots) -> bool:
	for i in slots:
		if i.letra_certa != i.get_child(1).get_child(0).text:
			return false
	return true

func change_slots_color(slots, color) -> void:
	for i in slots:
		if color == "GREEN":
			i.theme = preload("res://Themes/slot_green.tres")
		if color == "RED":
			i.theme = preload("res://Themes/slot_red.tres")
		if color == "DEFAULT":
			i.theme = preload("res://Themes/slot.tres")

func _on_control_check_fields() -> void:
	check_fields()

func end_game() -> void:
	var end_game_menu = preload("res://Scenes/end_game_menu.tscn").instantiate()
	end_game_menu.position.y += 110
	$CanvasLayer.add_child(end_game_menu)
	$Win.play()
	for i in 2:
		var confetes = preload("res://Scenes/confete_particules.tscn").instantiate()
		confetes.position = Vector2(i * end_game_menu.size.x, end_game_menu.size.y / 2)
		confetes.emitting = true
		end_game_menu.add_child(confetes)

func write_tips(get_random_word, tips_number) -> void:
	var type = Label.new()
	type.horizontal_alignment = 1
	type.text = translate_to_category(finished_category)
	$CanvasLayer/Control/MainContainer/Tips.add_child(type)
	for tip in tips_number:
		var new_label = Label.new()
		new_label.horizontal_alignment = 1
		new_label.text = get_random_word[tip]
		$CanvasLayer/Control/MainContainer/Tips.add_child(new_label)

func translate_to_category(category) -> String:
	if Autoload.game_language == Autoload.languages.ENGLISH:
		match category:
			"Frutas": return "Fruits"
			"Herois": return "Heroes"
			"Series": return "Series"
			_ : return category
	if Autoload.game_language == Autoload.languages.PORTUGUES:
		match category:
			"Frutas": return "Frutas"
			"Herois": return "Herois"
			"Series": return "Series"
			_ : return category
	return category

func _on_reveal_pressed() -> void:
	get_node("/root/Autoload/Selected").play()
	var slots = $CanvasLayer/Control/MainContainer/Slots.get_children()
	for i in slots:
		i.get_child(0).text = i.letra_certa

func _on_reroll_pressed() -> void:
	get_node("/root/Autoload/Selected").play()
	node_reload_current_scene()

func _on_menu_pressed() -> void:
	get_node("/root/Autoload/Selected").play()
	$CanvasLayer/Categories.visible = true
	$CanvasLayer/Categories.update_count()

func _on_button_pressed() -> void:
	Autoload.load_config_screen()
	get_node("/root/Autoload/Selected").play()

func _on_option_pressed() -> void:
	get_node("/root/Autoload/Selected").play()
	Autoload.load_config_screen()

func get_random_string(length: int = 5) -> String:
	var vocabulary = "abcdefghijklmnopqrstuvwxyz-"
	var result = ""
	for i in length:
		result += vocabulary[randi() % vocabulary.length()]
	return result
