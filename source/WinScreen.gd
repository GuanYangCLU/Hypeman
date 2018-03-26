extends Node2D

var openMain = false

func _ready():
	pass
	
func _process(delta):
	if (Input.is_action_pressed("ui_accept") and openMain == true):
		get_tree().change_scene("res://MainMenu.tscn")
	

func _on_Timer_timeout():
	openMain = true
	pass # replace with function body
