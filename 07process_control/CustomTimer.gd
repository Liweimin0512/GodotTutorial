extends Node

var time_passed = 0 # 经过的时间
var is_running := true # 计时器是不是正在运行
@onready var label: Label = $"../Label"

func _process(delta: float) -> void:
	if is_running:
		time_passed += delta
		label.text = str(time_passed)

func pause() -> void:
	is_running = false

func rusume() -> void:
	is_running = true

func reset() -> void:
	time_passed = 0


func _on_btn_pause_pressed() -> void:
	pause()

func _on_btn_resum_pressed() -> void:
	rusume()

func _on_btn_reset_pressed() -> void:
	reset()
