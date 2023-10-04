extends Node2D

"""
1.变量的基础
1.1 变量的定义和作用
1.2 如何在GDScript声明和初始化变量
"""
var score = 0 # 声明了一个初始值是0的变量，变量名叫score
var player_name : String = "老李" # 指定数据类型的变量

var player_type : int # 玩家的类型，godot推断数据类型
var is_dead: bool
"""
1.3变量的命名方式
●变量名应该以字母或下划线`_`开头，之后可以是字母、数字或下划线。
●变量命名不能包含空格或特殊字符（除了下划线），并且也不能是GDScript的保留字。
●建议使用有意义的变量名，并遵循一致的命名约定，例如使用小写字母和下划线（snake_case）或驼峰命名法（CamelCase）。
"""
var _score :int = 0 # 声明一个私有变量, 不建议外部去操作这个变量
#public var PlayerName: 
#private var playerName:

"""
1.4 常用的数据类型
int、 float、bool、String、
Array、Dictionary GDScript当中的集合
Vector2、Vector3 
"""
var player_position: Vector2 = Vector2(0, 0)

"""
Color
"""
var color: Color = Color.ALICE_BLUE

"""
Node节点
"""
var test_node: CharacterBody2D
@onready var player: CharacterBody2D = $Player

func _ready() -> void:
	print("score: ", score)
	score += 1
	print("score: ", score)
	score = "score"
	print("score: ", score)
	print("player name: ", player_name)
	player_name = "老王"
	print("player name: ", player_name)
#	player_name = 1
#	print("player name: ", player_name)
	print("player type: ", player_type)
	player_type = 2
	print("player type: ", player_type)
#	player_type = "player_type"
	print("is_dead: ", is_dead)
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
