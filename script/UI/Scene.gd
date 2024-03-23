extends Control
func _ready():
	visible = false
	$Background.visible = false
	EventHandler.connect("battle_started", _init, )
	pass

func _init(_character_name):
	visible = true
	$AnimationPlayer.play("fade_in")
	get_tree().paused = true
	$Background/Panel/Label.text ="Question?"

func _on_animation_player_animation_finished(anim_name):
	if anim_name == "fade_in":
		$AnimationPlayer.play ("fade_out")
		$Background/Panel/Button.grab_focus()

