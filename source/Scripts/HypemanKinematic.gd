extends KinematicBody2D

var speed = 300 
var fight = false
var Hype = 0
var anim = "Idle"
var facing = "Down"
onready var sprite = get_node("AnimatedSprite")
var hypescore = ("../TextEdit")
#whenever Hypeman high fives a civilian, add one to Hype variable

func _ready():
	set_physics_process(true)

func _physics_process(delta):
	var motion = Vector2() 
		
		
	if (Input.is_action_pressed("ui_cancel")):
#		get_tree("res://MainMenu").get_ingame()
		get_tree().change_scene("res://MainMenu.tscn")
		
		
	#Horizontal Controls
	if (Input.is_action_pressed("ui_left")):
		motion += Vector2(-1,0)
		sprite.set_animation("moveLeft")
		facing = "Left"
	elif (facing == "Left"):
		sprite.set_animation("standLeft")
		

	if (Input.is_action_pressed("ui_right")):
		motion += Vector2(1,0)
		sprite.set_animation("moveRight")
		facing = "Right"
	elif (facing == "Right"):
		sprite.set_animation("standRight")

	
	#Vertical Controls
	if (Input.is_action_pressed("ui_up")):
		motion += Vector2(0,-1)
		sprite.set_animation("moveUp")
		facing = "Up"
	elif (facing == "Up"):
		sprite.set_animation("standUp")
		
	if (Input.is_action_pressed("ui_down")):
		motion += Vector2(0,1)
		sprite.set_animation("moveDown")
		facing = "Down"
	elif (facing == "Down"):
		sprite.set_animation("standDown")

	if (Input.is_action_pressed("ui_accept") and Hype >= 75 and fight == true):
		print("WINNER")
		get_tree().change_scene("res://WinScreen.tscn")
	
	motion = motion.normalized() * speed
	
	move_and_slide(motion)
	
	speed = 300 + Hype


func get_hyped():
	Hype +=25
	print(Hype)

func hype_score():
	hypescore.text = str(Hype)
	
func get_the_hype():
	Hype
	print("Hype Obtained")


func _on_DragArea_area_entered( area ):
	Hype -= 50
	print("draged")
	print(Hype)
	pass # replace with function body


func _on_Downer_area_entered( area ):
	if area.get_name() == "Hypeman":
		fight = true
	pass # replace with function body
