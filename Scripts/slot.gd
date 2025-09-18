extends PanelContainer
class_name Slot

signal check_fields()

var letra_certa : String

func _can_drop_data(at_position: Vector2, data: Variant) -> bool:
	return data is Item

func _drop_data(at_position: Vector2, data: Variant) -> void:
	print("DROPED SLOT")
	if self.get_child_count() < 2:
		data.get_parent().remove_child(data)
		self.add_child(data)
	check_fields.emit()
