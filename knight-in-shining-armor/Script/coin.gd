extends Area2D
@onready var animation: AnimationPlayer = $AnimationPlayer

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		print("cool")
		animation.play("Pickup")
