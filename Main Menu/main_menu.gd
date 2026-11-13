extends Control

func _on_start_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/scene_one.tscn")



func _on_options_button_pressed() -> void:
	get_tree().change_scene_to_file("res://menu/settings_menu.tscn")


func _on_exit_button_pressed() -> void:
	get_tree().exit()
