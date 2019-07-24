extends Node2D

export var is_disabled = false
export var blocked = false
export(Color) var myColor = Color(1, 1, 1)
onready var textnode = $Text
onready var collisionbox = $StaticBody2D/CollisionShape2D

export var text = ""
export(NodePath) onready var connected_to
export(NodePath) onready var brother_of

func _ready():
	textnode.text = text
	
	if !get_tree().is_network_server():
		rpc_id(1, "request_state", get_tree().get_network_unique_id())

	
	#if has_node(brother_of):
	#	var brother = get_node(brother_of)
	#	if myColor != brother.myColor:
	#		myColor = brother.myColor
	#$Sprite.modulate = myColor


func _process(delta):
	
	if has_node(brother_of):
		var brother = get_node(brother_of)
		if is_disabled != brother.is_disabled:
			update_state(brother.is_disabled)
	
	if is_disabled && $Sprite.frame != 1:
		$Sprite.frame = 1
		$Sprite.modulate.a = 0.25
		#textnode.add_color_override("font_color", Color(80, 80, 80))
		collisionbox.disabled = true
	elif !is_disabled && $Sprite.frame != 0 :
		$Sprite.frame = 0
		$Sprite.modulate.a = 1
		#textnode.add_color_override("font_color", Color(255, 255, 255))
		collisionbox.disabled = false

func _on_EventCollision_body_entered(body):
	if body.is_in_group("PlayersGroup") && body.local_player && !is_disabled && !blocked && !collisionbox.disabled:
		update_state(true)
		if has_node(connected_to):
			var connected_node = get_node(connected_to)
			connected_node.update_state(false)

remote func activate_box(boolean):
	is_disabled = boolean

func update_state(boolean):
	is_disabled = boolean
	rpc("activate_box", boolean)
	
remote func request_state(id):
	rpc_id(id, "activate_box", is_disabled)