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
