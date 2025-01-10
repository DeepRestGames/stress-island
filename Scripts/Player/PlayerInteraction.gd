extends Area3D


enum InteractionTypes {
	TALK,
	PICKUP,
	NO_EFFECT
}


var current_interaction_entity


func _on_body_entered(body: Node3D) -> void:
	if body.name == "NPCStaticBody3D":
		print("body found!")
