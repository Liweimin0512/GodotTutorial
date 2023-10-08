extends Node2D
class_name FuncMain

"""
godot开发基础知识09：函数与参数

创建一个简单的计分系统。
○用户可以通过点击屏幕上的按钮来增加或减少分数。
○显示当前的分数。
○提供一个重置分数的按钮。
"""

var score : int  = 0

func add_score() -> void:
	score += 1

func deduct_score() -> void:
	score -= 1

func update_score_display() -> void:
	print("current score:", score)
	$PanelContainer/Label.text = str(score)

"""
函数？
函数是一个独立的代码块，可以接受输入（参数），执行一段逻辑（操作），并且返回输出（结果）。
函数主要目的：就是对于一些特定的逻辑进行封装。
GDScript ： 函数的声明 func 关键字。 

函数：
- 代码重用
- 模块化的组织代码
- 让代码更易于维护和调试

应用场景:
	- 事件的处理：玩家输入、碰撞检测
	- 游戏逻辑的开发：角色移动、攻击等等
	- UI更新: 更新分数的显示

GDScript定义函数
func 关键字
函数名字: 命名规则：以字幕或者下划线开头，可以包含字母、数字和下划线。避免使用GDScript保留字
参数（形参）：可选参数数据类型，可选默认值
-> 返回值类型：可选，可省略
函数体：具体的逻辑内容
return: 如果返回void, 省略
"""


## 这是一个测试用的教学用的方法
func my_function(parameter1, parameter2: String, parameter3:int = 0) -> String:
	var rs : String = str(parameter1) + parameter2 + str(parameter3)
	return rs

"""
函数的调用
重点：尽可能指定函数的参数的数据类型
"""
func _ready() -> void:
	print(my_function(123, "游戏学院！"))
	global_var = 15
	check_scope()
	print("_ready global_var", global_var)
	update_score_display()
	$Button.pressed.connect(
		func ()->void:
#			print("Button被点击了！")
			deduct_score()
			update_score_display()
	)
	$Button2.pressed.connect(
		func() -> void:
			add_score()
			update_score_display()
	)
	
"""
作用域
"""
var global_var = 10
func check_scope():
#	var local_var = 20
#	global_var = 20
	var global_var = 25
	global_var -= 20
	print("check_scope global_var ", global_var)
#	print("local_var ", local_var)

"""
匿名函数
godot4 lambad函数
Callable
"""

func _on_button_pressed() -> void:
	pass # Replace with function body.

