extends Area2D
var character_name: String = "Blacksmith"

func _ready():
	pass

func _on_body_entered(body):
	print("player")
	if body.is_in_group("player"):
		EventHandler.emit_signal("battle started", character_name)
	pass 
