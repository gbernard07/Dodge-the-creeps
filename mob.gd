extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var mob_type = $AnimatedSprite2D.sprite_frames.get_animation_names()
	$AnimatedSprite2D.play(mob_type[randi() % mob_type.size()])


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
