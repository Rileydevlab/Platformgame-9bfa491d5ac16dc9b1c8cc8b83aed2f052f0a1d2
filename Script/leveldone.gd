extends Control


func _on_StartGame_pressed():
	Globals.current_score = 0
	get_tree().change_scene("res://Tscn/Startmenu.tscn")
	