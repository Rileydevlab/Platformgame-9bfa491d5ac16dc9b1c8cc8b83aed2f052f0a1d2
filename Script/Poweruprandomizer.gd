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
	if time < 7:
		set_text("")
	if time == 6:
		add_color_override("font_color", Color(0.54,0.17,0.89,1))
		for x in range(1):
			var rand = randi()%3+1
			var cycle = rand
			if cycle == 1:
				set_text("Run!")
			if cycle == 2:
				set_text("Slow Down!")
			if cycle == 3:
				set_text("Jump!")
	if time == 8:
		for x in range(1):
			var rand = randi()%3+1
			var cycle = rand
			if cycle == 1:
				set_text("Run!")
			if cycle == 2:
				set_text("Slow Down!")
			if cycle == 3:
				set_text("Jump!")
	if time == 10:
		add_color_override("font_color", Color(0.75,0.75,0.75,1))
		for x in range(1):
			var rand = randi()%3+1
			var cycle = rand
			if cycle == 1:
				set_text("Run!")
			if cycle == 2:
				set_text("Slow Down!")
			if cycle == 3:
				set_text("Jump!")
	if time == 15:
		time = time - 15
func _on_Timer_timeout():
	time = time + 1
	timerstart = false
