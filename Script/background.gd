extends Sprite

onready var timer = get_node("Timer")
var timeron = false
var time = 5
func _ready():
	timer.connect("timeout", self, "_on_Timer_timeout")

func _physics_process(delta):
	
	if timeron == false:
		set_region_rect(Rect2( 0, 0, 1920 * time,1080*time ))
		timeron = true
		timer.start()


func _on_Timer_timeout():
	print("timer")
	time = time + 1
	timeron = false
	
