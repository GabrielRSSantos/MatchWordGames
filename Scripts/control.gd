extends Control

signal check_fields()

func _can_drop_data(at_position: Vector2, data: Variant) -> bool:
	return data is Item

func _drop_data(at_position: Vector2, data: Variant) -> void:
	data.get_parent().remove_child(data)
	$MainContainer/Letters.add_child(data)
	check_fields.emit()
