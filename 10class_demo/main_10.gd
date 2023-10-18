extends Node2D


"""
面向对象基础Object-Oriented Programming, OOP

类class ： 属性和方法 属性-> 变量； 方法 -> 函数；
对象object： 类的实例， 实例化：按照一个模板（class）去创建一个对象Object

面向对象3大特性： 继承、封装和多态
	- 封装（Encapsulation）：封装是指将对象的内部状态隐藏，只暴露必要的接口给外部，
		以保护对象内部的完整性和安全性。
	- 继承（Inheritance）：继承允许创建基于现有类的新类，新类继承了现有类的属性和方法，
		并可以添加新的或修改现有的属性和方法。
	- 多态（Polymorphism）：多态是指不同类的对象可以以统一的接口来执行相同的操作，
		但可能产生不同的结果，增加了程序的可扩展性和灵活性。
"""

func _ready() -> void:
	# 封装OOP核心特性之一
	var cha : Character = Character.new()
	cha.cha_name = "cha"
	cha.take_damage(10)
	# 继承是面向对象编程的最重要的机制
	var slime: Enemy = Enemy.new()
	slime.cha_name = "slime"
	slime.take_damage(20)
	# 多态是指不同类的对象可以通过相同的接口来执行操作，产生不同的结果
	slime.interact()
	var friend: Character = Friend.new()
	friend.cha_name = "老李"
	friend.interace()

"""
1.请设计一个简单的游戏对象系统，包括基础的游戏对象类和几个继承自基础类的具体游戏对象类，
并实现一些基本的交互功能。
2.如何在Godot中实现多态？请给出一个实例。
3.尝试重构一个现有的小项目，通过模块化设计来提高代码的可维护性和可重用性。
"""
