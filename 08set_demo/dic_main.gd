extends Node2D

"""
KeyValue 键值对
"""

var empty_dict := {} # 创建了一个空的字典
var person_dict : Dictionary = {
	"老李":["老李",35],
	"小李":["小李",15],
	"大李":["大李",25]
} # 创建了一个空的字典

var game_settings = {
	"volume": 75,
	"resolution": {"width":1920, "height":1080},
	"fullscene": false
}

func _ready() -> void:
	# 访问字典的某个元素
	print("小李：", person_dict["小李"])
	# 检查字典中是否包含指定的键
	print("是否存在小张？：", person_dict.has("小张"))
	print("是否存在老李？：", person_dict.has("老李"))
	# 删除指定的Key以及对应的Value
	person_dict.erase("小李")
	print("删除小李之后：", person_dict)
	
	# 添加元素
	person_dict["小张"] = ["小张", 18]
	print("添加小张之后：", person_dict)
	print("小张的详细信息：", person_dict.小张)
	
	# 获取所有的Key
	print("获取所有的Key:", person_dict.keys())
	# 获取所有的Value
	print("获取所有的Value:", person_dict.values())
	# 字典的遍历
	for key in person_dict:
		var value = person_dict[key]
		print("获取Key: ", key," 获取Value： ", value)
	
	## 实例项目使用
	change_settings("volume", 85)

func change_settings(key, value) -> void:
	game_settings[key] = value

"""
练习：
库存系统：对道具的增删改查操作以及排序、堆叠等；
"""

