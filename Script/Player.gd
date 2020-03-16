extends KinematicBody2D
const UP = Vector2(0,-1)
var GRAVITY = 20
const powerupgravity = 15
const JUMP_HEIGHT = -500
var motion = Vector2()
var timeron = false
var startspeed = true 
var doublejump = false
var powerupon = false
var powerupcount = false
var powerup = 0
var powerupset = 0
var bullet = preload("res://Tscn/Bullet.tscn")
signal collided
onready var timer = get_node("bullettimer")
var time = 0
func _ready():
	timer.connect("timeout", self, "_on_Timer_timeout")
func _physics_process(delta):
	#print("X",motion.x)
	#print("Y",motion.y)
	if timeron == false:
		timeron = true
		timer.start()
	var friction = false
	$Sprite.flip_h = false
	$Sprite.play("run")
	if startspeed == true:
		motion.x = 350
		startspeed = false
	if powerup == 0:
		motion.y += GRAVITY
		if motion.x < 600:
			motion.x += .1
	if powerup == 1:
		motion.y += 17
		if motion.x < 600:
			motion.x += .3
		#motion.x = 500
	if powerup == 2:
		motion.y += GRAVITY
		if motion.x > 300:
			motion.x -= .3
		#motion.x = 300
	if powerup == 3:
		motion.y += 15
		motion.x += 0
		#motion.x = 400
	if motion.x < 300:
		get_tree().reload_current_scene()
		get_tree().change_scene("res://Tscn/leveldone.tscn")
		print("restart")
	if motion.y > 2000:
		get_tree().reload_current_scene()
		get_tree().change_scene("res://Tscn/leveldone.tscn")
		print("restart")
		pass
	for i in get_slide_count():
		var collision = get_slide_collision(i)
		if collision:
			emit_signal('collided', collision)
	if is_on_floor():
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
func _on_Timer_timeout():
	shoot()
	timeron = true
func shoot():
	var bulletinstance = bullet.instance()
	bulletinstance.start($Muzzle.global_position, rotation)
	get_parent().add_child(bulletinstance)

func _input(event):
	if event is InputEventScreenTouch:
		if event.is_pressed():
			if is_on_floor():
				motion.y = JUMP_HEIGHT
				doublejump = false
			if is_on_floor() == false && doublejump == false:
				motion.y = JUMP_HEIGHT
				doublejump = true
func _on_poweruprandomizer_powerup(value):
	#print("yes")
	#print(value)
	powerup = value

