extends Panel
class_name Item

signal check_fields_from_item()

@onready var original_position : Vector2

@export var letter : String

func _can_drop_data(at_position: Vector2, data: Variant) -> bool:
	return data is Item

func _get_drag_data(at_position: Vector2) -> Variant:
	$PickUp.play()
	var preview = duplicate()
	var c = Control.new()
	c.add_child(preview)
	preview.position = Vector2.ZERO - at_position
	set_drag_preview(c)
	return self

func _drop_data(at_position: Vector2, data: Variant) -> void:
	if data == self:
		return
	var temp_data = self.duplicate()
	temp_data.connect("check_fields_from_item", get_tree().get_root().get_child(1).check_fields)
	data.get_parent().add_child(temp_data)
	data.get_parent().remove_child(data)
	get_parent().add_child(data)
	get_parent().remove_child(self)
	check_fields_from_item.emit()
