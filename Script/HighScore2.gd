extends Label

func _physics_process(delta):
	Data.load()
	if Data.player.scoretwo < Globals.current_score2:
		Data.player.scoretwo = Globals.current_score2
		Data.save()
		var scorenumber = str(Data.player.scoretwo)
		var score = "High Score: " + scorenumber
		set_text(score)
	else:
		var scorenumber = str(Data.player.scoretwo)
		var score = "High Score: " + scorenumber
		set_text(score)
