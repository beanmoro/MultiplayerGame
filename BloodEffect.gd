<<<<<<< Updated upstream
extends Particles2D


func _ready():
	yield(get_tree().create_timer(2.0), "timeout")
	queue_free()
=======
extends Node2D

onready var particles = $Particles2D

func _ready():
	particles.emitting = true
	yield(get_tree().create_timer(0.5), "timeout")
	queue_free()
	
	
>>>>>>> Stashed changes
