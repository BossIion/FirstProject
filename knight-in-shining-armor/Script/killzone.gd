extends Area2D
@onready var animation: AnimationPlayer = $AnimationPlayer



@onready var timer: Timer = $Timer

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		animation.play("death")
		print("You are dead")
		Engine.time_scale = 0.5
		body.velocity.y = -200
		timer.start()
		body.get_node("CollisionShape2D").queue_free()


func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
	Engine.time_scale = 1
