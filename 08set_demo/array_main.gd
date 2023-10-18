extends Node2D

"""
- 角色列表
- 物品管理（背包系统）
- 事件系统
- 关卡数据

1. 数组 [a,b,c,d,e]
"""
var test_array:Array[Player] = [] # 声明了一个空的数组
var test_2_array:Array = [1,2,3,"hello?"] 
var int_array: PackedInt32Array = [1, 2, 3, "hello!"]
var vector_array:PackedVector2Array = [Vector2.ZERO, "helloVector!"]
var sort_array: Array[Array] = [
	["老李",35],
	["小李",15],
	["大李",25],
]

func _ready() -> void:
	var hello: String = test_2_array[3]
	print(hello)
	var int_hello: int = int_array[3]
	print(int_hello)
	var vector_hello = vector_array[1]
	print(vector_hello)
	# 插入值
	test_2_array.append("godot!")
	test_2_array.insert(10, "insert!")
	print("插入值：", test_2_array)
	# 删除
	test_2_array.erase("hello?")
	print("删除值：", test_2_array)
	# 查找
	var hello_find = test_2_array.find("godot!")
	print("查找值：", hello_find)
	# 获取大小
	print("获取数组大小：", test_2_array.size())
	# 自定义排序
	print("排序前：", sort_array)
	# 复习内容：条件控制：三元运算符的写法，
	# 预习内容: 匿名函数的用法
	sort_array.sort_custom(
		func(a, b) -> bool:
			return true if a[1] < b[1] else false
			)
	print("排序后：", sort_array)
	# 循环语句
	var for_array = [10, 20, 30, 40]
	for item in for_array:
		print(item)

func _custom_sort(a, b) -> bool:
	if a[1] > b[1]:
		return true
	return false

"""
练习：
1.创建一个空的数组来存储敌人
2.添加一个敌人到数组里["enemy1","enemy2"]
3.从数组里消灭一个敌人
4.打印现有的敌人的名字
"""
