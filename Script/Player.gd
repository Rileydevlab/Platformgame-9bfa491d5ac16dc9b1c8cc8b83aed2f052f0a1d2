extends KinematicBody2D
const UP = Vector2(0,-1)
var GRAVITY = 20
const powerupgravity = 15
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
	var friction = false
	$Sprite.flip_h = false
	$Sprite.play("run")
	if global.powerup == 0 && global.startspeed == true:
		motion.x = 400
		global.startspeed = false
	if global.powerup == 0:
		motion.x += .1
		motion.y += GRAVITY
	if global.powerup == 1:
		motion.x = 550
		motion.y += GRAVITY
	if global.powerup == 2:
		motion.x = 350
		motion.y += GRAVITY
	if global.powerup == 3:
		motion.x = 400
		motion.y += 15
	
	if motion.x > 500 && global.powerup == 0:
		motion.x = 500
	if motion.x < 300:
		motion.x = -10
	if motion.y > 2000:
		global.powerup = 0
		global.startspeed = true
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
