extends Control

"""
实战演练：简单的计分系统
- UI显示分数，增加分数，减少分数咱们使用按钮
- 实现相关的函数
- 使用信号机制来处理节点之间的通信。
"""

@onready var labe_score: Label = %labe_score
@onready var btn_deduct: Button = %btn_deduct
@onready var btn_add: Button = %btn_add

var score: int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	btn_add.pressed.connect(
		func() -> void:
			add_score(1)
			update_score_display()
	)
	btn_deduct.pressed.connect(_on_btn_deduct_pressed)
	update_score_display()

func add_score(s: int) -> void:
	score += s

func deduct_score(s: int) -> void:
	score -= s

func update_score_display() -> void:
	labe_score.text = str(score)

func _on_btn_deduct_pressed() -> void:
	deduct_score(1)
	update_score_display()
