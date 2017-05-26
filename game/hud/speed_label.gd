#extends Control
 

# class member variables go here, for example:
var label = null
var debug_label = null
var fps_label = null
var dist_label = null

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	label = get_node("Label")
	debug_label = get_node("Label 2")
	fps_label = get_node("Label FPS")
	dist_label = get_node("Label dist")

func update_speed(text):
	label.set_text(text)

func update_debug(text):
	debug_label.set_text(text)
	
func update_fps():
	fps_label.set_text(str(OS.get_frames_per_second()))

func update_distance(text):
	dist_label.set_text(text)