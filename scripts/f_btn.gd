extends TextureButton

onready var current_scene = $".."

func _ready():
# warning-ignore:return_value_discarded
# automatically connects pressed() signal withouth having to manaully connect via the Godot Editor
	connect("pressed", self, "_on_f_btn_pressed")

func _on_f_btn_pressed() -> void:
	Events.emit_signal("change_the_scene_forward", current_scene)
	print("forward button was pressed")
	


