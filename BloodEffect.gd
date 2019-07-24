extends Node2D

onready var particles = $Particles2D

func _ready():
	particles.emitting = true
	yield(get_tree().create_timer(0.5), "timeout")
	queue_free()
	
	
