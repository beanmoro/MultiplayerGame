extends Node2D

func _on_Area2D_body_entered(body):
	if body.is_in_group("PlayersGroup") && body.local_player:
		body.updateCoins = true
		rpc("destroy_coin")
		queue_free()

remote func destroy_coin():
	queue_free()

