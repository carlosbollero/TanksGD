
extends KinematicBody2D

# member variables here, example:
# var a=2
# var b="textvar"
var btn_left
var btn_right
var vel = 200
var orientacion
var movimiento = Vector2()
var sprite



func _fixed_process(delta):

	btn_left = Input.is_action_pressed("btn_left")
	btn_right = Input.is_action_pressed("btn_right")
	
	
	if is_colliding():
		print("Collision with ", get_collider().get_name())
		var normal = get_collision_normal()
		print(normal)
		movimiento = normal.slide(movimiento)
		move(movimiento)
	
	detect_movement()
	move(movimiento * delta)

func detect_movement():
	if btn_left:
		if sprite.get_rot() != (PI/2):
			sprite.set_rot(PI/2)
		movimiento.x = -vel
		movimiento.y = 0
	elif btn_right:
		if sprite.get_rot() != (3*PI/2):
			sprite.set_rot(3*PI/2)
		movimiento.x = vel
		movimiento.y = 0
	elif Input.is_action_pressed("btn_up"):
		if sprite.get_rot() != 0:
			sprite.set_rot(0)
		movimiento.y = -vel
		movimiento.x = 0
	elif Input.is_action_pressed("btn_down"):
		if sprite.get_rot() != PI:
			sprite.set_rot(PI)
		movimiento.y = vel
		movimiento.x = 0
	else:
		movimiento = Vector2(0,0)

func _ready():
	# Initialization here
	orientacion = "este"
	btn_left = Input.is_action_pressed("btn_left")
	btn_right = Input.is_action_pressed("btn_right")
	
	sprite = get_node("tanque_sprite")
	
	set_fixed_process(true)