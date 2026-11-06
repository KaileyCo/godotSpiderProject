extends Node2D

@onready var health = $Health
@onready var health_bar = $Ui/HealthBar


func _ready() -> void:
	health.health_changed.connect(_update_health_bar)
	health.died.connect(_on_died)

	_update_health_bar(health.current_health, health.max_health)


func _update_health_bar(current: int, maximum: int) -> void:
	health_bar.max_value = maximum
	health_bar.value = current


func _on_died() -> void:
	print("Player died!")


func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventKey and event.pressed and not event.echo:
		if event.keycode == KEY_J:
			health.take_damage(20)
		elif event.keycode == KEY_H:
			health.heal(10)
