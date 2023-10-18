extends CharacterBody2D
class_name Character

## 生命值（私有属性）
var _health : int = 100
@export var cha_name: String

## 造成伤害(公共的方法）
func take_damage(amount: int) -> void:
	_health -= amount
	# 画面表现
	if _health <= 0:
		self._die()
	print("当前角色：", self.cha_name, "受到伤害：", amount, "当前生命值：", self._health)
	return # 返回值为空 void 是可以省略 return 关键字的

## 交互方法（虚方法，具体实现交给子类）
func interact() -> void:
	pass

## 死亡（私有的方法）
func _die() -> void:
	print(cha_name + "has died.")
