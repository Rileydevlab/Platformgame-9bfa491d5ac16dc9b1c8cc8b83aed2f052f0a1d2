extends Timer
func _physics_process(delta):
	if global.powerup_one == true:
		global.run = global.run + 30
		start()
		print(get_time_left())
	if is_stopped() == true && global.powerup_one == true:
		print("stopped")
		global.run = 200
		global.powerup_one = false
		
	
