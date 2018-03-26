extends Area2D
#this script is the Drags script

var hyped = false
var highfive = false
var contact = false
onready var sprite = get_node("AnimatedSprite")

func _ready():
	set_physics_process(true)

func _physics_process(delta):
	if (Input.is_action_pressed("ui_accept") and contact == true and highfive == false and hyped == false):
		print("High Five")
		print("Hyped")
		hyped = true
		highfive = true
		sprite.set_animation("Hyped")
		get_node("../../Hypeman2").get_hyped()
		
func _on_Civilian_area_entered( area ):
	if area.get_name() == "Hypeman":
		
		print("entered")
		contact = true
	pass # replace with function body

func _on_Civilian_area_exited( area ):
	if area.get_name() == "Hypeman":
		
		print("exited")
		contact = false
	pass # replace with function body
