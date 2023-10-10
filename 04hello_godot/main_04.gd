extends Node3D
class_name Main

var s_cube: PackedScene = preload("res://04hello_godot/cube.tscn")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
#	print('Hello Godot!')
	add_child(s_cube.instantiate())
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
#	add_child(s_cube.instantiate())
	pass

var testArray : PackedStringArray = ['asda', 123]

##This function greets the provided name.
##	Args:
##	name (String): The name to greet.
func greet(name):
	print("Hello, " + name + "!")
