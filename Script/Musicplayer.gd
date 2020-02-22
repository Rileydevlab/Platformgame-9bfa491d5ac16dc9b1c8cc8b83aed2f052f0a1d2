extends Node

onready var timer = get_node("Timer")
func _ready():
	timer.connect("timeout", self, "_on_Timer_timeout")
var timeron = false
func _physics_process(delta):
		var rand = randi()%4+1
		if timeron == false:
			if rand == 1:
				$AudioStreamPlayer.play()
				timer.start()
				timeron = true
			if rand == 2:
				$AudioStreamPlayer2.play()
				timer.start()
				timeron = true
			if rand == 3:
				$AudioStreamPlayer.play()
				$AudioStreamPlayer2.play()
				timer.start()
				timeron = true
				
func _on_Timer_timeout():
	$AudioStreamPlayer.stop()
	$AudioStreamPlayer2.stop()
	timeron = false
	print("Done")
