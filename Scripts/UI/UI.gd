extends Control


@onready var interaction_prompt = $InteractionPromptContainer


func show_interaction_prompt(can_interact: bool):
	if can_interact:
		interaction_prompt.show()
	else:
		interaction_prompt.hide()
