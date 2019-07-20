extends Node

const server_port = 25565
const max_players = 10
# probando el git
var player_name = ""
var players = {}

func _player_connected(id):
	print("Se esta conectando Jugador ", str(id))

func _player_disconnected(id):
	unregister_player(id)
	print("El Jugador ", str(id), " se ha desconectado!")

func _connected_ok():
	var unique_id = get_tree().get_network_unique_id()
	rpc("register_player", unique_id, player_name)
	start_game()
	register_player(unique_id, player_name)
	
func _connected_fail():
	get_tree().set_network_peer(null)

func _server_disconnected():
	get_tree().set_network_peer(null)
	for p_id in players:
		get_tree().get_root().get_node("World").get_node("Players").get_node(str(p_id)).free()
	players.clear()
	get_tree().get_root().get_node("Lobby").show()
	get_tree().get_root().get_node("World").hide()	
	print("El servidor se ha desconectado!")

remote func register_player(id, new_player_name):
	if get_tree().is_network_server():
		rpc_id(id, "register_player", 1, player_name)
		for p_id in players:
			rpc_id(id, "register_player", p_id, players[p_id])
			rpc_id(p_id, "register_player", id, new_player_name)
	players[id] = new_player_name
	spawn_player(id, players[id])
	print("Jugador ", str(players[id]), " conectado!")

remote func unregister_player(id):
	get_tree().get_root().get_node("World").get_node("Players").get_node(str(id)).free()
	players.erase(id)

func host_game(new_player_name):
	print("Creando Servidor...")
	player_name = new_player_name
	var host = NetworkedMultiplayerENet.new()
	host.create_server(server_port, max_players)
	get_tree().set_network_peer(host)
	print("Servidor Creado e Iniciado!")
	start_game()
	spawn_player(1, player_name)

func join_game(ip, new_player_name):
	print("Conectando a servidor...")
	player_name = new_player_name
	var host = NetworkedMultiplayerENet.new()
	host.create_client(ip, server_port)
	get_tree().set_network_peer(host)

func spawn_player(id, username):
	var player = load("res://Player.tscn").instance()
	player.set_network_master(id)
	player.set_name(str(id))
	player.username = username
	player.position = Vector2(randi()%200+100, 100)
	get_tree().get_root().get_node("World").get_node("Players").add_child(player)

remote func start_game():
	
	var world = load("res://World.tscn").instance()
	get_tree().get_root().add_child(world)
	get_tree().get_root().get_node("Lobby").hide()

func _ready():
	get_tree().connect("network_peer_connected", self, "_player_connected")
	get_tree().connect("network_peer_disconnected", self, "_player_disconnected")
	get_tree().connect("connected_to_server", self, "_connected_ok")
	get_tree().connect("connection_failed", self, "_connected_fail")
	get_tree().connect("server_disconnected", self, "_server_disconnected")
