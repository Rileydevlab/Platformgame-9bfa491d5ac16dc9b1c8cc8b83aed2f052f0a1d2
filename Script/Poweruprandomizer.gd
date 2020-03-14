extends Label

onready var timer = get_node("Timer")
var timerstart = false
var time = 0
var powerupone = 0
signal powerup(value)

func _ready():
	timer.connect("timeout", self, "_on_Timer_timeout")

func _physics_process(delta):
	if timerstart == false:
		timerstart = true
		timer.start()
	if time < 7:
		set_text("")
	if time == 6:
		add_color_override("font_color", Color( 0.42, 0.35, 0.8, 1 ))
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
		add_color_override("font_color", Color( 1, 0.84, 0, 1 ))
		for x in range(1):
			var rand = randi()%3+1
			var cycle = rand
			if cycle == 1:
				set_text("Run!")
			if cycle == 2:
				set_text("Slow Down!")
			if cycle == 3:
				set_text("Jump!")
	if time == 11:
		var poweruptext = get_text()
		var powerupnumber = 0
		if poweruptext == "Run!":
			powerupnumber = 1
		if poweruptext == "Slow Down!":
			powerupnumber = 2
		if poweruptext == "Jump!":
			powerupnumber = 3
		powerupone = powerupnumber
		sendpowerup()
	if time == 15:
		powerupone = 0
		time = time - 15
		sendpowerup()
func _on_Timer_timeout():
	time = time + 1
	timerstart = false
func sendpowerup():
	#print(powerupone)
	#print(powerupone)
	emit_signal("powerup", powerupone)
