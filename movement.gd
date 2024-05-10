extends Sprite3D

var speed = 300

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_right") or Input.is_key_pressed(KEY_D):
		position.x += speed * delta
	if Input.is_action_pressed("ui_left") or Input.is_key_pressed(KEY_A):
		position.x -= speed * delta
	if Input.is_action_pressed("ui_up") or Input.is_key_pressed(KEY_W):
		position.z -= speed * delta  # Assuming Z-axis is the forward/backward axis
	if Input.is_action_pressed("ui_down") or Input.is_key_pressed(KEY_S):
		position.z += speed * delta  # Assuming Z-axis is the forward/backward axis
