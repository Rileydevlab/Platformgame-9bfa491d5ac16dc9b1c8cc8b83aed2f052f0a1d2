extends Label

func _physics_process(delta):
	Data.load()
	var scorenumber = str(Data.player.scoretwo)
	var score = "High Score: " + scorenumber
	set_text(score)
