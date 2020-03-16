extends ParallaxLayer
var background = preload("res://Background/Backgroundobjects.tscn")
onready var timer = get_node("Timer")
var timeron = false
var time = 0
var xvalue = 0
func _ready():
	timer.connect("timeout", self, "_on_Timer_timeout")
	
func _physics_process(delta):
	
	if timeron == false:
		var backgroundinstance = background.instance()
		backgroundinstance.global_translate(Vector2(xvalue,0))
		get_parent().add_child(backgroundinstance)
		xvalue = xvalue + 7600
		timeron = true
		timer.start()


func _on_Timer_timeout():
	print("timer")
	time = time + 1
	timeron = false
	
