extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var mob_type = $AnimatedSprite2D.sprite_frames.get_animation_names()
	$AnimatedSprite2D.play(mob_type[randi() % mob_type.size()])


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
