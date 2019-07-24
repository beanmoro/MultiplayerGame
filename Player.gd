extends KinematicBody2D

const MAX_JUMPS = 2

var username = ""
var movement = Vector2(0,0)
var speed = 50
var hspd = 0
var vspd = 0
var n_jumps = 0
var is_grounded = false
var is_jumping = false
var is_hidden = false
export(Color) var player_color = Color(1, 1, 1)

var keyring = []


var updateCoins = false
var updateCheckpoint = false

var local_player = false

var starcoins = 0

onready var camera = get_node("Camera")

var dead = false

var checkpoint_coords = Vector2(0,0)

var bLeft
var bUp
var bRight
var bDown
var bDash

const GRAV = 50
const MAX_VSPEED = 1000
const JUMP_FORCE = 800

func _ready():
	add_to_group("PlayersGroup")
	
	
	if is_network_master():
		checkpoint_coords = position
		camera.current = true
		local_player = true
		$CollisionShape2D.disabled = false
		#rset("player_color", player_color)
	else:
		$CollisionShape2D.disabled = true
		camera.current = false
	
	$HUD/username.text=username
	$Sprite.modulate = player_color
	print("Se creo el Jugador ", username, "!")
	

func _physics_process(delta):
	if is_network_master():
		process_input()
		if !dead:
			process_movement(delta)
		spike_collision()

	if dead && !is_hidden:
		$Sprite.hide()
		$CollisionShape2D.disabled = true
		$HUD.hide()
		bloodparticle_effect(position)
		is_hidden = true
		
	elif !dead && is_hidden:
		$Sprite.show()
		$CollisionShape2D.disabled = !local_player
		$HUD.show()
		is_hidden = false
		
	if updateCoins && is_network_master():
		rpc("update_coins", starcoins)
		updateCoins = false
	
	if updateCheckpoint && is_network_master():
		rpc("update_checkpoint", checkpoint_coords)
		updateCheckpoint = false


func process_input():
	
	bLeft = Input.is_action_pressed("ui_left") 
	bUp = Input.is_action_just_pressed("ui_up")
	bRight = Input.is_action_pressed("ui_right")
	
	if bLeft && abs(hspd) < 10:
		hspd -= 1
		$Sprite.play()
		$Sprite.animation = "default"
		$Sprite.flip_h = true
	elif bRight && abs(hspd) < 10:
		hspd += 1
		$Sprite.play()
		$Sprite.animation = "default"
		$Sprite.flip_h = false
	elif abs(hspd) > 0.1:
		hspd *=0.60
	else:
		hspd = 0
		$Sprite.stop()
		$Sprite.animation = "idle"

	if bUp && n_jumps > 0: #jump
		vspd = -JUMP_FORCE
		n_jumps-=1
		is_jumping = true
		$Sprite.animation = "jump"
		
	if is_on_ceiling() && vspd < 0:
		vspd = 0
	
	if dead && Input.is_key_pressed(KEY_R):
		respawn()

func spike_collision():
	var tilemap = get_tree().get_root().get_node("World").get_node("TileMap")
	var tile_pos = tilemap.world_to_map(position)
	var cell = tilemap.get_cellv(tile_pos)
	
	if cell == 3 && !dead:
		kill()

func respawn():
	dead = false
	
	position = checkpoint_coords
	rpc("update_dead", dead)

func kill():
	dead = true
	
	rpc("update_dead", dead)

func process_movement(delta):
	
	is_grounded = is_on_floor()
	
	if !is_grounded:
		$Sprite.animation = "jump"
		if vspd <= MAX_VSPEED:
			vspd += GRAV
		else:
			vspd = MAX_VSPEED
	elif is_grounded && !bUp: #jump
		vspd = 0
		n_jumps = MAX_JUMPS
	
	if is_jumping && vspd >= 0:
		is_jumping = false
	
	var snap = Vector2.DOWN * 32 if !is_jumping else Vector2.ZERO
	move_and_slide_with_snap( Vector2(hspd * speed, vspd) , snap, Vector2(0, -1))
	rpc_unreliable("update_position", position, delta)
	rpc_unreliable("update_frame", $Sprite.animation, $Sprite.playing, $Sprite.flip_h)

puppet func update_position(pos, delta):
	self.position = self.position.linear_interpolate(pos, delta * speed) # A mejorar
puppet func update_dead(state):
	dead = state

puppet func update_coins(coins):
	if starcoins < coins:
		starcoins = coins

puppet func update_checkpoint(coords):
	checkpoint_coords = coords

remote func add_key(key):
	keyring.push_back(key)

remote func delete_key(key):
	keyring.erase(key)
	
puppet func update_frame(anim, playing, flip):
	$Sprite.animation = anim
	$Sprite.flip_h = flip
	if playing:
		$Sprite.play()
	else:
		$Sprite.stop()

func bloodparticle_effect(_position):
	var effect = load("res://BloodEffect.tscn").instance()
	add_child(effect)
	
