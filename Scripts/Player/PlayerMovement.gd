extends CharacterBody3D


@onready var player_model = $PlayerModel
# Rotation and interpolation for facing
var orientation = Transform3D()
const ROTATION_INTERPOLATE_SPEED = 8

var move_speed: float = 10.0
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")


func _physics_process(delta):
	
	# Get the input direction and handle the movement/deceleration.
	var input_dir = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	
	var direction = (get_viewport().get_camera_3d().transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * move_speed
		velocity.z = direction.z * move_speed
	else:
		velocity.x = move_toward(velocity.x, 0, move_speed)
		velocity.z = move_toward(velocity.z, 0, move_speed)

	# --- Animations ---
	# Rotation
	if direction:
		var q_from = orientation.basis.get_rotation_quaternion()
		var q_to = Transform3D().looking_at(Vector3(-direction.x, 0, -direction.z), Vector3.UP).basis.get_rotation_quaternion()
		# Interpolate current rotation with desired one.
		orientation.basis = Basis(q_from.slerp(q_to, delta * ROTATION_INTERPOLATE_SPEED))
		player_model.global_transform.basis = orientation.basis
	# Animate
	#if not direction:
		#_animate(ANIMATIONS.IDLE, delta)
	#else:
		#_animate(ANIMATIONS.WALK, delta)
		
	move_and_slide()
