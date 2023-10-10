extends Node2D

"""
Node节点
"""
var test_node: CharacterBody2D
@onready var player: CharacterBody2D = $Player

func _ready() -> void:
	player.dead.connect(_on_player_attack)
#	get_node("Player")
#	$Player.attack()
	get_tree().call_group("Player", "group_attack")

"""
3 节点之间的通信方式
3.1 直接调用
3.2 信号 观察者模式
3.3 组Group
3.4 单例（全局脚本）
3.5 自定义消息传递系统

"""
func _on_player_attack() -> void:
	print("_on_player_attack")
"""
4 实战的练习：创建一个简单的按钮交互
4.1 创建一个按钮的场景
4.2 为按钮添加一个脚本
4.3 通过信号和脚本实现点击按钮的交互效果
4.4 最终效果：点击按钮打印“button was pressed”
"""
