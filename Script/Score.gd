extends Label

func _physics_process(delta):
	var scorenumber = str(Globals.current_score)
	var score = "Score: " + scorenumber
	set_text(score)
