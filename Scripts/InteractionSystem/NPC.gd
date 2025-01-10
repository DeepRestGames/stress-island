class_name NPC
extends Interactable


func _on_interaction_area_entered(area: Area3D) -> void:
	if area.name == "PlayerInteractionArea":
		EventBus.emit_signal("interaction_event", {"type": "show_prompt", "interaction_message": "Talk to " + interactable_name})


func _on_interaction_area_exited(area: Area3D) -> void:
	if area.name == "PlayerInteractionArea":
		EventBus.emit_signal("interaction_event", {"type": "hide_prompt"})
