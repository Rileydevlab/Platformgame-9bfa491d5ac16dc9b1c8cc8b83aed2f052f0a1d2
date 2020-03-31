extends Label

func _physics_process(delta):
	Data.load()
	if Data.player.score < Globals.current_score1:
		Data.player.score = Globals.current_score1
		Data.save()
		var scorenumber = str(Data.player.score)
		var score = "High Score: " + scorenumber
		set_text(score)
	else:
		var scorenumber = str(Data.player.score)
		var score = "High Score: " + scorenumber
		set_text(score)
