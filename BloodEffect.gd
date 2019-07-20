extends Particles2D
#Comentario para github
#La Weaita
# comentario pirulle

func _ready():
	yield(get_tree().create_timer(2.0), "timeout")
	queue_free()