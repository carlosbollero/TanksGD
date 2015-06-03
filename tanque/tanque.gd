
extends KinematicBody2D

# member variables here, example:
# var a=2
# var b="textvar"
var btn_left
var btn_right
var speed
var orientacion

func _ready():
	# Initialization here
	orientacion = "este"
	btn_left = Input.is_action_pressed("btn_left")
	btn_right = Input.is_action_pressed("btn_right")
	
	set_fixed_process(true)
	
	speed = 200


func _fixed_process(delta):

	btn_left = Input.is_action_pressed("btn_left")
	btn_right = Input.is_action_pressed("btn_right")
	
	if btn_left:
		print("left")
		if orientacion != "oeste":
			orientacion = "oeste"
			set_rot(-get_rot())
		move(Vector2(-2.5, 0))
	elif btn_right:
		print("right")
		if orientacion != "este":
			orientacion = "este"
			set_rot(-get_rot())
		move(Vector2(2.5,0))

	if Input.is_action_pressed("btn_up"):
		print("up")
		if orientacion != "norte":
			orientacion = "norte"
			set_rot(-get_rot())
		move(Vector2(0, -2.5))
		
	if Input.is_action_pressed("btn_down"):
		print("down")
		if orientacion != "sur":
			orientacion = "sur"
			set_rot(-get_rot())
		move(Vector2(0, 2.5))