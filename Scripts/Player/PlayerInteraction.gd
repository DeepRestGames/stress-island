extends Area3D


func _on_body_entered(body: Node3D) -> void:

	var interactable_root = body.get_parent_node_3d()

	# Interact with NPC
	if interactable_root is NPC:
		var npc = interactable_root as NPC
		EventBus.emit_signal("interaction_event", {"type": "show_prompt", "interaction_message": "Talk to " + npc.interactable_name})
		return
	
	# Interact with Pickup
	if interactable_root is Pickup:
		var pickup = interactable_root as Pickup
		EventBus.emit_signal("interaction_event", {"type": "show_prompt", "interaction_message": "Pick up " + pickup.interactable_name})
		return


func _on_body_exited(_body: Node3D) -> void:
	
	# If there are no bodies detected in the player's interaction area, we force the hiding of the interaction prompt
	if not has_overlapping_bodies():
		EventBus.emit_signal("interaction_event", {"type": "hide_prompt"})
		return
	
	# If a body just exited the player's interaction area but there are still other bodies, we take the first
	# interactable one that is detected without any prioritization.
	var overlapping_body = get_overlapping_bodies()[0]
	var overlapping_body_root = overlapping_body.get_parent_node_3d()

	# Interact with NPC
	if overlapping_body_root is NPC:
		var npc = overlapping_body_root as NPC
		EventBus.emit_signal("interaction_event", {"type": "show_prompt", "interaction_message": "Talk to " + npc.interactable_name})
		return
	
	# Interact with Pickup
	if overlapping_body_root is Pickup:
		var pickup = overlapping_body_root as Pickup
		EventBus.emit_signal("interaction_event", {"type": "show_prompt", "interaction_message": "Pick up " + pickup.interactable_name})
		return
