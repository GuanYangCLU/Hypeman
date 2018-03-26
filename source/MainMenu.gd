extends Node2D

var readKeys = false

func _ready():
	pass
	
func _process(delta):
	if (Input.is_action_pressed("ui_accept") and readKeys == true):
		get_tree().change_scene("res://World.tscn")
	if (Input.is_action_pressed("ui_cancel") and readKeys == true):
		get_tree().quit()
		


#func get_ingame():
	#ingame = true



func _on_Timer_timeout():
	readKeys = true
	pass
