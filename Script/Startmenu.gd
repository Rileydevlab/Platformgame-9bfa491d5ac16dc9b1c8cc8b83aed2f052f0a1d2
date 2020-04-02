extends Control


func _on_StartGame_pressed():
	get_tree().change_scene("res://Tscn/World.tscn")
	pass
func _on_StartGameeasy_pressed():
	get_tree().change_scene("res://Tscn/Worldeasy.tscn")
	pass


func _on_QuitGame_pressed():
	get_tree().set_auto_accept_quit(false)
	get_tree().quit()
	pass


func _on_StartGamehighscores_pressed():
	get_tree().change_scene("res://Tscn/HighScores.tscn")
	pass


func _on_StartGamecredits_pressed():
	get_tree().change_scene("res://Tscn/Credits.tscn")
	pass

func _on_StartGamecontrol_pressed():
	get_tree().change_scene("res://Tscn/Controls.tscn")
	pass
