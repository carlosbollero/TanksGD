
extends KinematicBody2D

# member variables here, example:
# var a=2
# var b="textvar"
var btn_left
var btn_right
var vel = 2.5
var orientacion

func _ready():
	# Initialization here
	orientacion = "este"
	btn_left = Input.is_action_pressed("btn_left")
	btn_right = Input.is_action_pressed("btn_right")
	
	set_fixed_process(true)
	



func _fixed_process(delta):

	btn_left = Input.is_action_pressed("btn_left")
	btn_right = Input.is_action_pressed("btn_right")
	
	if is_colliding():
		print("Collision with ", get_collider())
	
	if btn_left:
#		print("left")
		if orientacion != "oeste":
			orientacion = "oeste"
			set_rot(PI/2)
		move(Vector2(-vel, 0))
	elif btn_right:
#		print("right")
		if orientacion != "este":
			orientacion = "este"
			set_rot(3 * PI/2)
		move(Vector2(vel,0))
	elif Input.is_action_pressed("btn_up"):
#		print("up")
		if orientacion != "norte":
			orientacion = "norte"
			set_rot(0)
		move(Vector2(0, -vel))
		
	elif Input.is_action_pressed("btn_down"):
#		print("down")
		if orientacion != "sur":
			orientacion = "sur"
			set_rot(PI)
		move(Vector2(0, vel))