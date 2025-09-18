extends Control

@onready var sound_button: Button = $VBoxContainer/HBoxContainer2/SoundButton
@onready var is_audio_on: bool = true
@onready var item_theme_color = preload("res://Themes/item.tres")
@onready var button_item_theme_color = preload("res://Themes/buttons.tres")
@onready var selected_sound = $"../AudioStreamPlayer"

var pink = preload("res://Themes/item_pink.tres")
var green = preload("res://Themes/item_green.tres")
var red = preload("res://Themes/item_red.tres")
var blue = preload("res://Themes/item_blue.tres")

func _on_sound_button_toggled(toggled_on: bool) -> void:
	selected_sound.play()
	if toggled_on:
		sound_button.text = "Off"
		is_audio_on = false
	else:
		sound_button.text = "On"
		is_audio_on = true

func _ready() -> void:
	$VBoxContainer/HBoxContainer6/OptionButton.select(Autoload.game_language)
	$VBoxContainer/HBoxContainer4/Volume.value = Autoload.volume
	
func _process(delta: float) -> void:
	if is_audio_on:
		AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), Autoload.volume)
	else:
		AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), -80)

func _on_back_pressed() -> void:
	get_node("/root/Autoload/Selected").play()
	get_parent().queue_free()

func _on_pink_pressed() -> void:
	selected_sound.play()
	var normal = pink.get_stylebox("normal", "Button")
	var pressed = pink.get_stylebox("pressed", "Button")
	button_item_theme_color.set_stylebox("normal", "Button", normal)
	button_item_theme_color.set_stylebox("hover", "Button", normal)
	button_item_theme_color.set_stylebox("pressed", "Button", pressed)
	button_item_theme_color.set_stylebox("panel", "PopupMenu", normal)
	button_item_theme_color.set_stylebox("hover", "PopupMenu", normal)

func _on_blue_pressed() -> void:
	selected_sound.play()
	var normal = blue.get_stylebox("normal", "Button")
	var pressed = blue.get_stylebox("pressed", "Button")
	button_item_theme_color.set_stylebox("normal", "Button", normal)
	button_item_theme_color.set_stylebox("hover", "Button", normal)
	button_item_theme_color.set_stylebox("pressed", "Button", pressed)
	button_item_theme_color.set_stylebox("panel", "PopupMenu", normal)
	button_item_theme_color.set_stylebox("hover", "PopupMenu", normal)

func _on_green_pressed() -> void:
	selected_sound.play()
	var normal = green.get_stylebox("normal", "Button")
	var pressed = green.get_stylebox("pressed", "Button")
	button_item_theme_color.set_stylebox("normal", "Button", normal)
	button_item_theme_color.set_stylebox("hover", "Button", normal)
	button_item_theme_color.set_stylebox("pressed", "Button", pressed)
	button_item_theme_color.set_stylebox("panel", "PopupMenu", normal)
	button_item_theme_color.set_stylebox("hover", "PopupMenu", normal)

func _on_red_pressed() -> void:
	selected_sound.play()
	var normal = red.get_stylebox("normal", "Button")
	var pressed = red.get_stylebox("pressed", "Button")
	button_item_theme_color.set_stylebox("normal", "Button", normal)
	button_item_theme_color.set_stylebox("hover", "Button", normal)
	button_item_theme_color.set_stylebox("panel", "PopupMenu", normal)
	button_item_theme_color.set_stylebox("pressed", "Button", pressed)
	button_item_theme_color.set_stylebox("hover", "PopupMenu", normal)

func _on_volume_value_changed(value: float) -> void:
	Autoload.volume = value

func _on_letter_pink_pressed() -> void:
	selected_sound.play()
	var panel = pink.get_stylebox("panel", "Panel")
	item_theme_color.set_stylebox("panel", "Panel", panel)


func _on_letter_blue_pressed() -> void:
	selected_sound.play()
	var panel = blue.get_stylebox("panel", "Panel")
	item_theme_color.set_stylebox("panel", "Panel", panel)


func _on_letter_green_pressed() -> void:
	selected_sound.play()
	var panel = green.get_stylebox("panel", "Panel")
	item_theme_color.set_stylebox("panel", "Panel", panel)


func _on_letter_red_pressed() -> void:
	selected_sound.play()
	var panel = red.get_stylebox("panel", "Panel")
	item_theme_color.set_stylebox("panel", "Panel", panel)

func _on_option_button_item_selected(index: int) -> void:
	selected_sound.play()
	Autoload.change_language(index)
