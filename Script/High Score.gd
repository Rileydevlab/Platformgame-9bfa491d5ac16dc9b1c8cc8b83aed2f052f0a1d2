extends Label

func _physics_process(delta):
	if Globals.high_score < Globals.current_score:
		Globals.high_score = Globals.current_score
		var scorenumber = str(Globals.high_score)
		var score = "High Score: " + scorenumber
		set_text(score)
	else:
		var scorenumber = str(Globals.high_score)
		var score = "High Score: " + scorenumber
		set_text(score)
