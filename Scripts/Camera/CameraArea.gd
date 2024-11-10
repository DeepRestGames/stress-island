extends Area3D


var camera: Camera3D
@onready var camera_transform = $CameraTransform


func _ready():
	camera = get_viewport().get_camera_3d()


func _on_body_entered(body):
	var tween = create_tween().set_ease(Tween.EASE_IN_OUT).set_trans(Tween.TRANS_SINE)
	tween.parallel().tween_property(camera, "global_position", camera_transform.global_position, 3)
	tween.parallel().tween_property(camera, "global_rotation", camera_transform.global_rotation, 3)
