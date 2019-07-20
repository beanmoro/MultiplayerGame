extends Control

var ip = "127.0.0.1"
var port = "25565"
var username = "UnnamedPlayer"
var maxplayers = "5"


func _on_host_button_pressed():
	gamestate.host_game(username)


func _on_join_button_pressed():
	
	gamestate.join_game(ip, username)


func _on_ip_textbox_text_changed(new_text):
	ip = new_text


func _on_username_textbox_text_changed(new_text):
	username = new_text

func _on_players_textbox_text_changed(new_text):
	maxplayers = new_text


func _on_port_textbox_text_changed(new_text):
	port = new_text