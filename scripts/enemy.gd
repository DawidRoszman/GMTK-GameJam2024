class_name Enemy
extends RigidBody2D

func _physics_process(delta: float) -> void:
	pass

func increase(multiplier: Vector2) -> void:
	if scale > Vector2(2,2):
		queue_free()
		return
	scale += multiplier
func decrease(multiplier: Vector2) -> void:
	if scale < Vector2(0.2,0.2):
		queue_free()
		return
	scale -= multiplier
