extends CharacterBody2D
class_name Player

@export var player_name : String = "老李"
@onready var sprite_2d: Sprite2D = $Sprite2D

signal dead

func _ready() -> void:
#	sprite_2d.frame_changed
	pass

func attack() -> void:
	print("player attack!")
	dead.emit()

func group_attack() -> void:
	print("player group attack!")
