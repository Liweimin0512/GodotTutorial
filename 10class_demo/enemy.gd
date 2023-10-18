extends Character
class_name Enemy

var aggression: int = 10

#
func take_damage(amount: int) -> void:
	super(amount)
#	super._die()
	print("当前是史莱姆，我们是cha的子类")

func interact() -> void:
	print(cha_name + " attacks you!")
