extends Control

@export var main_scene_path: String
@onready var loading_icon_container = $LoadingIcon_AspectRatioContainer

var min_loading_time = 5
var current_loading_time = 0

func _ready():
	ResourceLoader.load_threaded_request(main_scene_path)
	
	var loading_icon_size = loading_icon_container.size
	loading_icon_container.pivot_offset = loading_icon_size / 2

func _process(delta):
	var loading_progress = ResourceLoader.load_threaded_get_status(main_scene_path)
	
	current_loading_time += delta
	
	if loading_progress == ResourceLoader.THREAD_LOAD_LOADED and current_loading_time >= min_loading_time:
		get_tree().change_scene_to_packed(ResourceLoader.load_threaded_get(main_scene_path))
