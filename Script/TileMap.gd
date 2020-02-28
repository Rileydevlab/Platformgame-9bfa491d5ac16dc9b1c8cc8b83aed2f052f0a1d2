extends TileMap
var xaxis = 0
var yaxis = 0
var player = 1
var startmap = true
onready var timer = get_node("Timer")
var timeron = false
func _ready():
	timer.connect("timeout", self, "_on_Timer_timeout")

func _physics_process(delta):
	if startmap == true:
		for i in range (10):
			base_two()
			startmap = false
	var cycle = randi()%9+1
	if cycle == 1 && timeron == false:
		base_one()
		timeron = true
		timer.start()
	if cycle == 2 && timeron == false:
		base_two()
		timeron = true
		timer.start()
	if cycle == 3 && timeron == false:
		base_three()
		timeron = true
		timer.start()
	if cycle == 4 && timeron == false:
		base_four()
		timeron = true
		timer.start()
	if cycle == 5 && timeron == false:
		base_five()
		timeron = true
		timer.start()
	if cycle == 6 && timeron == false:
		base_six()
		timeron = true
		timer.start()
	if cycle == 7 && timeron == false:
		base_seven()
		timeron = true
		timer.start()
	if cycle == 8 && timeron == false:
		base_eight()
		timeron = true
		timer.start()
func base_one():
	var loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,0)
	xaxis = xaxis + 1
	loc = Vector2(xaxis ,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis ,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 5
	yaxis  = yaxis  + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,2)
func base_two():
	var loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,5)
	yaxis = yaxis - 6
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,4)
	yaxis = yaxis + 6
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,5)
	yaxis = yaxis - 6
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,4)
	yaxis = yaxis + 6
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,5)
	yaxis = yaxis - 6
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,4)
	yaxis = yaxis + 6
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,5)
	yaxis = yaxis - 6
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,4)
	yaxis = yaxis + 6
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,5)
func base_three():
	var loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,0)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 5
	yaxis = yaxis - 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,2)
func base_four():
	var loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,0)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 5
	yaxis = yaxis + 6
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,2)
func base_five():
	var loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,0)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 7
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,2)
func base_six():
	var loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,0)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,2)
	xaxis = xaxis + 5
	yaxis = yaxis - 2
	set_cell(loc.x,loc.y,0)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,2)
	set_cell(loc.x,loc.y,0)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,2)
	xaxis = xaxis + 5
	yaxis = yaxis - 2
	set_cell(loc.x,loc.y,0)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,2)
func base_seven():
	var loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,0)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,2)
	xaxis = xaxis + 5
	yaxis = yaxis - 2
	set_cell(loc.x,loc.y,0)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,1)
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,2)
func base_eight():
	var loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,5)
	yaxis = yaxis - 6
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,4)
	yaxis = yaxis + 6
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,5)
	yaxis = yaxis - 6
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,4)
	yaxis = yaxis + 6
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,5)
	yaxis = yaxis - 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,4)
	yaxis = yaxis + 1
	yaxis = yaxis - 6
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,4)
	yaxis = yaxis + 6
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,5)
	yaxis = yaxis - 6
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,4)
	yaxis = yaxis + 6
	xaxis = xaxis + 1
	loc = Vector2(xaxis,yaxis)
	set_cell(loc.x,loc.y,5)

func _on_Timer_timeout():
	timeron = false

func _on_Player_collided(collision):
	# KinematicCollision2D object emitted by character
	if collision.collider is TileMap:
		var tile_pos = collision.collider.world_to_map($Player.position)
		tile_pos -= collision.normal  # Colliding tile
		var tile = collision.collider.get_cellv(tile_pos)
		#print(tile)
		#print(tile_pos)

