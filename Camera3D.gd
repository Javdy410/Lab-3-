extends Camera3D


var target



func _ready():
	pass # 
	
	if target : 
		position = target.position


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if ! target:
		return
		
	position = target.position
