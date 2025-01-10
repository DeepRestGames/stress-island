extends Area3D


enum InteractionTypes {
	TALK,
	PICKUP,
	NO_EFFECT
}


func _on_body_entered(body: Node3D) -> void:
	if body.get_parent_node_3d() is NPC:
		var npc = body.get_parent_node_3d() as NPC
		EventBus.emit_signal("interaction_event", {"type": "show_prompt", "interaction_message": "Talk to " + npc.interactable_name})


func _on_body_exited(body: Node3D) -> void:
	if not has_overlapping_bodies():
		EventBus.emit_signal("interaction_event", {"type": "hide_prompt"})
		return
	
	var overlapping_bodies = get_overlapping_bodies()
	
	for overlapping_body in overlapping_bodies:
		if body.get_parent_node_3d() is NPC:
			var npc = body.get_parent_node_3d() as NPC
			EventBus.emit_signal("interaction_event", {"type": "show_prompt", "interaction_message": "Talk to " + npc.interactable_name})
			return
