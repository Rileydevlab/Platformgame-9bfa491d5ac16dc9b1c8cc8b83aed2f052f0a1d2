extends Area2D

onready var timer = get_node("Timer")
func _ready():
	timer.connect("timeout", self, "_on_Timer_timeout")
	
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			global.run = -5
			timer.start()
			
			
func _on_Timer_timeout():
	print("power up one done!")
	global.run = .1
	global.startrun = true
