extends Area2D 

var direction: Vector2 = Vector2.ZERO
var speed: float = 400.0

func _physics_process(delta):
	global_position += direction * speed * delta
	rotation = direction.angle()

func _on_body_entered(body):
	if body.is_in_group("enemies"):
		body.apply_stun()
		queue_free()

func _on_visible_on_screen_enabler_2d_screen_exited() -> void:
	queue_free()
