extends Spatial

# class member variables go here, for example:

export(String) var player_name = "一郎"
export(String) var romaji = "Ichiro"

onready var panel = get_node("BODY").get_node("Viewport").get_node("Nametag")
onready	var nameplate = get_node("BODY").get_node("Viewport 2").get_node("nameplate")


func _ready():
	set_name()
	pass
	
func select_name(s_name, s_romaji):
	#print("Selected name " + s_name + " " + s_romaji)
	player_name = s_name
	romaji = s_romaji
	
	set_name()
	
func set_name():
	#print("Setting name " + String(romaji))
	
	if player_name != "" and romaji != "":
		panel.set_name(romaji)
		#print("Panel name " + panel.name)
		nameplate.set_name(player_name)
		#print("Nameplate " + nameplate.name)
