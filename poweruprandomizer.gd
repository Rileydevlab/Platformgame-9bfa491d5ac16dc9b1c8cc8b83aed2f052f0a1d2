extends Node

onready var powerupone = preload("res://powerup1.tscn")
onready var timer = get_node("Timer")
var timeron = false

func _ready():
	timer.connect("timeout", self, "_on_Timer_timeout")
	
func _physics_process(delta):
	if timeron == false:
		timeron = true
		timer.start()

func _on_Timer_timeout():
	var powerup1 =  powerupone.instance()
	var yaxis = global.blockyaxis
	powerup1.set_position(Vector2(global.blockxaxis,global.blockyaxis/10))
	get_tree().get_root().add_child(powerup1)
	timeron = false
	print("new powerup")
