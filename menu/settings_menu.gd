extends Control



func _on_volume_value_changed(value: float):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Music"),value)

func _on_mute_toggled(toggled_on):
	AudioServer.set_bus_mute(0,toggled_on)
	

func _on_return_button_pressed() -> void:
	hide()
	get_parent().get_node("PauseMenu").show()
