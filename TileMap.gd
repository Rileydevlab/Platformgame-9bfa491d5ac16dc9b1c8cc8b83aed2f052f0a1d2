extends TileMap
var xaxis = global.blockxaxis 
var yaxis = global.blockyaxis 
var player = 1
var startmap = true
onready var powerupone = preload("res://powerup1.tscn")
onready var timer = get_node("Timer")
var timeron = false

func _ready():
	timer.connect("timeout", self, "_on_Timer_timeout")

func _physics_process(delta):
#print("xaxis",global.blockxaxis,"yaxis",global.blockyaxis)
	if startmap == true:
		for i in range (10):
			base_two()
			startmap = false
	var cycle = randi()%5+1
	if cycle == 1 && timeron == false:
		base_one()
		timeron = true
		timer.start()
	elif cycle == 2 && timeron == false:
		timeron = true
		base_two()
		timer.start()
	elif cycle == 3 && timeron == false:
		timeron = true
		base_three()
		timer.start()
	elif cycle == 4 && timeron == false:
		timeron = true
		base_four()
		timer.start()
func base_one():
	var loc = Vector2(global.blockxaxis,global.blockyaxis)
	set_cell(loc.x,loc.y,0)
	global.blockxaxis = global.blockxaxis + 1
	loc = Vector2(global.blockxaxis ,global.blockyaxis)
	set_cell(loc.x,loc.y,1)
	global.blockxaxis = global.blockxaxis + 1
	loc = Vector2(global.blockxaxis ,global.blockyaxis)
	set_cell(loc.x,loc.y,1)
	global.blockxaxis = global.blockxaxis + 1
	loc = Vector2(global.blockxaxis,global.blockyaxis)
	set_cell(loc.x,loc.y,1)
	global.blockxaxis = global.blockxaxis + 1
	loc = Vector2(global.blockxaxis,global.blockyaxis)
	set_cell(loc.x,loc.y,1)
	global.blockxaxis = global.blockxaxis + 5
	global.blockyaxis  = global.blockyaxis  + 1
	loc = Vector2(global.blockxaxis,global.blockyaxis)
	set_cell(loc.x,loc.y,1)
	global.blockxaxis = global.blockxaxis + 1
	loc = Vector2(global.blockxaxis,global.blockyaxis)
	set_cell(loc.x,loc.y,1)
	global.blockxaxis = global.blockxaxis + 1
	loc = Vector2(global.blockxaxis,global.blockyaxis)
	set_cell(loc.x,loc.y,1)
	global.blockxaxis = global.blockxaxis + 1
	loc = Vector2(global.blockxaxis,global.blockyaxis)
	set_cell(loc.x,loc.y,1)
	global.blockxaxis = global.blockxaxis + 1
	loc = Vector2(global.blockxaxis,global.blockyaxis)
	set_cell(loc.x,loc.y,1)
	global.blockxaxis = global.blockxaxis + 1
	loc = Vector2(global.blockxaxis,global.blockyaxis)
	set_cell(loc.x,loc.y,2)
func base_two():
	var loc = Vector2(global.blockxaxis,global.blockyaxis)
	set_cell(loc.x,loc.y,0)
	global.blockxaxis = global.blockxaxis + 1
	loc = Vector2(global.blockxaxis,global.blockyaxis)
	set_cell(loc.x,loc.y,1)
	global.blockxaxis = global.blockxaxis + 1
	loc = Vector2(global.blockxaxis,global.blockyaxis)
	set_cell(loc.x,loc.y,1)
	global.blockxaxis = global.blockxaxis + 1
	loc = Vector2(global.blockxaxis,global.blockyaxis)
	set_cell(loc.x,loc.y,1)
	global.blockxaxis = global.blockxaxis + 1
	loc = Vector2(global.blockxaxis,global.blockyaxis)
	set_cell(loc.x,loc.y,2)
	
func base_three():
	var loc = Vector2(global.blockxaxis,global.blockyaxis)
	set_cell(loc.x,loc.y,0)
	global.blockxaxis = global.blockxaxis + 1
	loc = Vector2(global.blockxaxis,global.blockyaxis)
	set_cell(loc.x,loc.y,1)
	global.blockxaxis = global.blockxaxis + 1
	loc = Vector2(global.blockxaxis,global.blockyaxis)
	set_cell(loc.x,loc.y,1)
	global.blockxaxis = global.blockxaxis + 1
	loc = Vector2(global.blockxaxis,global.blockyaxis)
	set_cell(loc.x,loc.y,1)
	global.blockxaxis = global.blockxaxis + 1
	loc = Vector2(global.blockxaxis,global.blockyaxis)
	set_cell(loc.x,loc.y,1)
	global.blockxaxis = global.blockxaxis + 5
	global.blockyaxis = global.blockyaxis - 1
	loc = Vector2(global.blockxaxis,global.blockyaxis)
	set_cell(loc.x,loc.y,1)
	global.blockxaxis = global.blockxaxis + 1
	loc = Vector2(global.blockxaxis,global.blockyaxis)
	set_cell(loc.x,loc.y,1)
	global.blockxaxis = global.blockxaxis + 1
	loc = Vector2(global.blockxaxis,global.blockyaxis)
	set_cell(loc.x,loc.y,1)
	global.blockxaxis = global.blockxaxis + 1
	loc = Vector2(global.blockxaxis,global.blockyaxis)
	set_cell(loc.x,loc.y,1)
	global.blockxaxis = global.blockxaxis + 1
	loc = Vector2(global.blockxaxis,global.blockyaxis)
	set_cell(loc.x,loc.y,1)
	global.blockxaxis = global.blockxaxis + 1
	loc = Vector2(global.blockxaxis,global.blockyaxis)
	set_cell(loc.x,loc.y,2)
func base_four():
	var loc = Vector2(global.blockxaxis,global.blockyaxis)
	set_cell(loc.x,loc.y,0)
	global.blockxaxis = global.blockxaxis + 1
	loc = Vector2(global.blockxaxis,global.blockyaxis)
	set_cell(loc.x,loc.y,1)
	global.blockxaxis = global.blockxaxis + 1
	loc = Vector2(global.blockxaxis,global.blockyaxis)
	set_cell(loc.x,loc.y,1)
	global.blockxaxis = global.blockxaxis + 1
	loc = Vector2(global.blockxaxis,global.blockyaxis)
	set_cell(loc.x,loc.y,1)
	global.blockxaxis = global.blockxaxis + 1
	loc = Vector2(global.blockxaxis,global.blockyaxis)
	set_cell(loc.x,loc.y,1)
	global.blockxaxis = global.blockxaxis + 5
	global.blockyaxis = global.blockyaxis + 6
	loc = Vector2(global.blockxaxis,global.blockyaxis)
	set_cell(loc.x,loc.y,1)
	global.blockxaxis = global.blockxaxis + 1
	loc = Vector2(global.blockxaxis,global.blockyaxis)
	set_cell(loc.x,loc.y,1)
	global.blockxaxis = global.blockxaxis + 1
	loc = Vector2(global.blockxaxis,global.blockyaxis)
	set_cell(loc.x,loc.y,1)
	global.blockxaxis = global.blockxaxis + 1
	loc = Vector2(global.blockxaxis,global.blockyaxis)
	set_cell(loc.x,loc.y,1)
	global.blockxaxis = global.blockxaxis + 1
	loc = Vector2(global.blockxaxis,global.blockyaxis)
	set_cell(loc.x,loc.y,1)
	global.blockxaxis = global.blockxaxis + 1
	loc = Vector2(global.blockxaxis,global.blockyaxis)
	set_cell(loc.x,loc.y,1)
	loc = Vector2(global.blockxaxis,global.blockyaxis)
	set_cell(loc.x,loc.y,1)
	global.blockxaxis = global.blockxaxis + 1
	loc = Vector2(global.blockxaxis,global.blockyaxis)
	set_cell(loc.x,loc.y,1)
	global.blockxaxis = global.blockxaxis + 1
	loc = Vector2(global.blockxaxis,global.blockyaxis)
	set_cell(loc.x,loc.y,2)
func _on_Timer_timeout():
	#var powerup1 =  powerupone.instance()
	#var yaxis = global.blockyaxis
	#print(yaxis)
	#powerup1.set_position(Vector2(global.blockxaxis,global.blockyaxis))
	#get_tree().get_root().add_child(powerup1)
	timeron = false
#	print("new powerup")
