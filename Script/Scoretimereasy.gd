extends Label
onready var timer = get_node("Timer")
var timerstart = false
var time = 0
func _ready():
	timer.connect("timeout", self, "_on_Timer_timeout")

func _physics_process(delta):
	if timerstart == false:
		timerstart = true
		timer.start()
	set_text(str(time))
func _on_Timer_timeout():
	time = time + 1
	Globals.current_score1 = time
	timerstart = false
