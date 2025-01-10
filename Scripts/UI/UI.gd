extends Control


@onready var interaction_prompt = $InteractionPromptContainer
@onready var interaction_label = $InteractionPromptContainer/InteractionLabel


func _ready() -> void:
	EventBus.connect("interaction_event", _on_interaction_event)


func _on_interaction_event(data):
	if data.type == "show_prompt":
		interaction_label.text = data.interaction_message
		interaction_prompt.show()
	
	if data.type == "hide_prompt":
		interaction_label.text = ""
		interaction_prompt.hide()
