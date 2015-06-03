
extends StaticBody2D

# member variables here, example:
# var a=2
# var b="textvar"

var btn_right
var btn_left

func _ready():
	# Initialization here
	set_fixed_process(true)
	
	
	
	

func _fixed_process(delta):
	btn_right = Input.is_action_pressed("btn_right")
	btn_left = Input.is_action_pressed("btn_left")
	
#	if btn_left:
#		rotate("left")
#	elif btn_right:
#		rotate("right")


func rotate(var side):
	if side == "left":
		set_rot(get_rot() + 0.05)
	elif side == "right":
		set_rot(get_rot() - 0.05)