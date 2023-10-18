extends Node2D

var global_var := 10

signal my_signal(name: String)

"""
函数定义：
函数是编程中的基础构件之一，它们允许我们封装和重用代码，使代码结构更清晰，更容易维护。
"""
func _ready() -> void:
	my_func("你好", "老李游戏学院！")
#	my_func(123, 456) # 编译期报错
	my_func(123, "456") # 编译期不会报错，但是方法体内部要处理
	var f : String = my_float(1)
	# 讲解func 作用域
	print("ready global_var:", global_var)
#	print("ready local_var:", local_var)
	check_scope()
	print("ready new global_var:", global_var)
#	print("ready local_var:", local_var) # 函数的内部变量外界不能访问
	# 匿名函数
	lambda_func.call("老李！")
	# 事件处理
	## 先绑定信号
	my_signal.connect(self.lambda_func)
	my_signal.connect(self._my_signal_func)
	# 发射信号
	my_signal.emit("我是信号！")

"""
GDSCript中的函数的基本语法
- func 关键字
- my_func 函数名字
- parameter1, parameter2: String, parameter3: String = "欢迎你" 函数的参数
	- parameter1						动态类型：除非需求明确，否则我们建议大家使用指定类型
	- parameter2: String 				指定类型
	- parameter3: String = "欢迎你"		指定类型&提供默认值
- 返回值类型 -> 写法 。可以省略。尽量指定返回值类型。保证类型安全
- 方法体： 执行具体的逻辑 pass 占位 return 要返回的具体的值（当返回void的时候，return可以省略）
"""
func my_func(parameter1, parameter2: String, parameter3: String = "欢迎你") -> void:
	var str : String = str(parameter1) + parameter2 + parameter3
	print(str)
	return # 可以省略，或者不指定返回的内容，就是void

"""
函数命名的规则：
- 函数名应以字母或下划线开头，可以包含字母、数字和下划线。
	- 以下划线开头命名函数，代表这个一个私有的函数，外界不要调用（只是约定）
- 避免使用GDScript的保留字作为函数名。
- 函数名应该清晰描述函数的功能。使用小写字母和下划线来分隔单词，例如：calculate_score、reset_timer等。
"""
func my_float(p: int) -> String:
	return ""

"""
函数和参数的作用域：
"""
func check_scope():
	var local_var : int = 15
	var global_var = 9
	print("global_var: ", global_var)
#	global_var = global_var + 10
#	print("new global_var: ", global_var)
#	print("local_var: ", local_var)
#	local_var += 10
#	print("new local_var: ", local_var)	
	print("func global_var: ", global_var)
	global_var = global_var + 10
	print("func new global_var: ", global_var)
	# 尽量避免命名冲突

"""
匿名函数：lambda表达式
godot4版本新增强的内容，与之对应的是新的变量类型：Callable
没有名字的函数
"""
var lambda_func : Callable = func(p: String) -> void:
	print(p + "我是一个匿名函数！")

"""
事件处理模块：信号Signal
"""
func _my_signal_func(p: String) -> void:
	print(p)

"""
实战演练：简单的计分系统
- UI显示分数，增加分数，减少分数咱们使用按钮
- 实现相关的函数
- 使用信号机制来处理节点之间的通信。
实战项目内容，写在Control脚本中
"""

"""
练习题
创建一个新的Godot项目，实现一个简单的计时器功能，要求使用函数来组织代码，实现计时器的启动、暂停和重置功能。
Timer节点，大家自学、
尝试为你的计时器添加信号功能，以便在计时器启动、暂停、重置时通知其他节点。
探索Godot的信号机制，尝试创建一个简单的交互系统，比如点击按钮改变场景中对象的颜色。
"""
