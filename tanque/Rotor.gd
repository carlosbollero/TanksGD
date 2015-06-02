
extends RigidBody2D

# member variables here, example:
# var a=2
# var b="textvar"
var btn_left
var btn_right

func _ready():
	# Initialization here
	
	
	set_fixed_process(true)
	


func _fixed_process(delta):
	btn_left = Input.is_action_pressed("btn_left")
	btn_right = Input.is_action_pressed("btn_right")

	if(btn_left):
		print(btn_left)
		set_rot(get_rot() + 0.05)
	elif(btn_right):
		set_rot(get_rot() - 0.05)
		print(btn_right)
	else:
		print("no")	