extends Node2D

export var idle_duration = 1.0
export var move_to = Vector2.RIGHT * 192
export var speed = 1.0

var follow = Vector2.ZERO
var on_server_side = false

onready var platform = $Platform
onready var tween = $MoveTween

func _ready():
	if get_tree().is_network_server():
		_init_tween()
		on_server_side = true

func _init_tween():
	var duration = move_to.length() / float(speed * 32)
	tween.interpolate_property(self, "follow", Vector2.ZERO, move_to, duration, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT, idle_duration) 
	tween.interpolate_property(self, "follow", move_to, Vector2.ZERO, duration, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT, duration + idle_duration * 2) 
	tween.start()

func _physics_process(delta):
	platform.position = platform.position.linear_interpolate(follow, 0.075)
	if on_server_side:
		rpc_unreliable("update_follow", follow)
		
puppet func update_follow(fol):
	follow = fol