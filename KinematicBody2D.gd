extends KinematicBody2D
const UP = Vector2(0,-1)
const GRAVITY = 20
const MAX_SPEED = 400
const JUMP_HEIGHT = -500
var motion = Vector2()
var startspeed = true 

func _physics_process(delta):
	print("X",motion.x)
	print("Y",motion.y)
	if Input.is_action_pressed("ui_down"):
		get_tree().reload_current_scene()
		print("restart")
		pass
	motion.y += GRAVITY
	var friction = false
	var ACCELERATION = .1
	motion.x += ACCELERATION
	$Sprite.flip_h = false
	$Sprite.play("run")
	if motion.x > 600:
		motion.x = 600
	if motion.x < 300:
		motion.x = 0
	if startspeed == true:
		motion.x = MAX_SPEED
		startspeed = false
	if motion.y > 2000:
		get_tree().reload_current_scene()
		print("restart")
		pass
	if Input.is_action_pressed("ui_right"):
		motion.x = 300
	if is_on_floor():
		if Input.is_action_pressed("ui_up"):
			motion.y = JUMP_HEIGHT
		if friction == true:
			motion.x = lerp(motion.x, 0, 0.2)
	else:
		if motion.y < 0:
			$Sprite.play("jump")
		else:
			$Sprite.play("fall")
		if friction == true:
			motion.x = lerp(motion.x, 0, 0.05)
	motion = move_and_slide(motion, UP)
	pass
func reset():
	global.blockxaxis = 0
	global.blockxaxis = 0
