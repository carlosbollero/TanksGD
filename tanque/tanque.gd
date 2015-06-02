
extends KinematicBody2D

# member variables here, example:
# var a=2
# var b="textvar"

var btn_left
var btn_right

func _ready():
	# Initialization here
	set_fixed_process(true)


func _fixed_process(delta):
	move(Vector2(1,0))