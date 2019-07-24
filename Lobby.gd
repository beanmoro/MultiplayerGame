extends Control

var ip = "127.0.0.1"
var port = "25565"
var username = "UnnamedPlayer"
var maxplayers = "5"
<<<<<<< Updated upstream
=======
var player_color = Color(1, 1, 1)
onready var colorpicker = $ConectionWindow/ColorPickerButton

func _ready():
	randomize()
	colorpicker.color = Color(float(rand_range(0, 1.0)), float(rand_range(0, 1.0)), float(rand_range(0, 1.0)))
	player_color = colorpicker.color
>>>>>>> Stashed changes


func _on_host_button_pressed():
	gamestate.host_game(username)


func _on_join_button_pressed():
	
	gamestate.join_game(ip, username)


func _on_ip_textbox_text_changed(new_text):
	ip = new_text


func _on_username_textbox_text_changed(new_text):
	if !(new_text == "'false'" || new_text == ""):
		username = new_text
	else:
		username = "Troll ql"

func _on_players_textbox_text_changed(new_text):
	maxplayers = new_text


func _on_port_textbox_text_changed(new_text):
<<<<<<< Updated upstream
	port = new_text
=======
	port = new_text

func _on_ColorPickerButton_color_changed(color):
	player_color = color
>>>>>>> Stashed changes
