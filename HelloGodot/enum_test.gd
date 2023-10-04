extends Node2D

enum CHARACTER_STATE{
	IDLE, 	# 0
	WALK,	# 1
	RUN,	# 2
	JUMP,	# 3
}

var CS: Dictionary = {
	"IDLE":0,
	"WALK":1,
	"RUN":2,
	"JUMP":3,
}

var state: CHARACTER_STATE = CHARACTER_STATE.IDLE

func _ready() -> void:
	print("current state: ", CHARACTER_STATE.keys()[state])
	state = CHARACTER_STATE.JUMP
	print("current state: ", state)
	change_state("Play")
	
func change_state(state_name: String) -> void:
	pass
	
	
