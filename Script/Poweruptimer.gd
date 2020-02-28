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
	if time == 0:
		set_text("5")
	if time == 1:
		set_text("4")
	if time == 2:
		set_text("3")
	if time == 3:
		set_text("2")
	if time == 4:
		set_text("1")
	if time == 5:
		set_text("0")
	if time == 6:
		set_text("Randomizing")
	if time == 11:
		set_text("Power up!")
	if time == 15:
		time = time - 15
func _on_Timer_timeout():
	time = time + 1
	timerstart = false
