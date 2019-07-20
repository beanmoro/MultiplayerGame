extends Particles2D
# comentario pirulle

func _ready():
	yield(get_tree().create_timer(2.0), "timeout")
	queue_free()
