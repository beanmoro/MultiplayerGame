extends Node2D

onready var label = $Label

# Called when the node enters the scene tree for the first time.
func _ready():
	label.hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_body_entered(body):
	if body.is_in_group("PlayersGroup"):
		label.show()
