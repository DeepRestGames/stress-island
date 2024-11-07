extends Node3D


@onready var animation_player = $AnimationPlayer
@onready var credits_panel = $HUD/CreditsPanel
@onready var music_volume_slider = $HUD/MenuItems/MUSICSliderContainer/MusicVolumeSlider
@onready var continue_button = $HUD/MenuItems/ContinueButtonContainer/CONTINUE

var loading_screen_scene = preload("res://Scenes/Screens/LoadingScreen.tscn")


func _ready():
	
	# TODO Decomment when saves are implemented
	#GameManager.check_for_saves()
	#if GameManager.checkpoint_saved:
		#continue_button.show()
	#else:
		#continue_button.hide()
	
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)


func _on_close_button_pressed():
	get_tree().quit()


func _on_credits_button_pressed():
	credits_panel.show()


func _on_rich_text_label_meta_clicked(meta):
	OS.shell_open(str(meta))


func _on_credits_panel_mask_pressed():
	credits_panel.hide()


func _on_music_volume_slider_value_changed(value):
	#Music.set_music_volume(value)
	pass


func _on_new_game_button_pressed():
	#GameManager.reset_game()
	animation_player.play("loading_screen")
	await animation_player.animation_finished
	get_tree().change_scene_to_packed(loading_screen_scene)
	


func _on_continue_button_pressed():
	animation_player.play("loading_screen")
	await animation_player.animation_finished
	get_tree().change_scene_to_packed(loading_screen_scene)
