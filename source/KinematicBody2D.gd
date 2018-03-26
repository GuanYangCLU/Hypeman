extends KinematicBody2D


var Player = ("../Hypeman2")
var highfive = false
var contact = false
var speed = 285
onready var sprite = get_node("AnimatedSprite")

func _ready():
	pass

func _process(delta):
	var move = Vector2(get_node(Player).position - self.position).clamped(285)

	#OLD MOVEMENT FOR REFERENCE
	#if Vector2
#	if (get_node(Player).position.x < self.position.x):
#		move += Vector2(-100,0)
#	if (get_node(Player).position.x > self.position.x):
#		move += Vector2(100,0)
#	if (get_node(Player).position.y < self.position.y):
#		move += Vector2(0,-100)
#	if (get_node(Player).position.y > self.position.y):
#		move += Vector2(0,100)
	move_and_slide(move) * speed * delta
		

func _on_Hypeman_area_entered( area ):
	if area.get_name() == "DragArea":
		contact = true
		
	pass # replace with function body
