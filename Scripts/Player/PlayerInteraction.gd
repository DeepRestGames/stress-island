extends Area3D


var current_interaction_entity


func _on_body_entered(body: Node3D) -> void:
	if body is Interactable:
		current_interaction_entity = body
		UI.show_interaction_prompt(true)


func _on_body_exited(body: Node3D) -> void:
	if body is Interactable:
		current_interaction_entity = null
		UI.show_interaction_prompt(false)
