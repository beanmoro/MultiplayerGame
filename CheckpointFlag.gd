extends Node2D

var is_activated = false
export var saved_coord = Vector2()

func _ready():
	add_to_group("Checkpoints")
	

func _process(delta):
	
	if is_activated && $Sprite.frame != 1:
		$Sprite.frame = 1
	elif !is_activated && $Sprite.frame != 0:
		$Sprite.frame = 0

func _on_Area2D_body_entered(body):
	if body.is_in_group("PlayersGroup") && body.local_player && !is_activated:
		body.checkpoint_coords = saved_coord
		body.updateCheckpoint = true
		body.update_checkpoint(saved_coord)
		update_checkpoint(true)
		rpc("update_checkpoint", true)

remote func update_checkpoint(boolean):
	is_activated = boolean
	update_players_checkpoints(saved_coord)
	comprobate_check()
	
func comprobate_check():
	var checkpoints = get_tree().get_nodes_in_group("Checkpoints")
	for checkpoint in checkpoints:
		if checkpoint.is_activated && checkpoint != self:
			checkpoint.is_activated = false

func update_players_checkpoints(coords):
	var players = get_tree().get_nodes_in_group("PlayersGroup")
	for player in players:
		if player.checkpoint_coords != coords:
			player.checkpoint_coords = coords
	