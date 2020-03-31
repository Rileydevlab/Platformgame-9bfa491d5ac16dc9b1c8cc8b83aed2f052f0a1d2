extends Label

func _physics_process(delta):
	var scorenumber = str(Globals.current_score1)
	var score = "Score: " + scorenumber
	set_text(score)
