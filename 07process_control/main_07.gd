extends Node2D

"""
1 条件语句
1.1 if elif else
1.2 match 模式匹配语句，其他编程语言里面的switch
1.3 三元运算符：简洁的，在一行中完成条件判断的方式
"""
var score :int = 90
var day: String = "星期三"

#func _ready() -> void:
#	score = 59
#	if score >= 90:
#		print("优秀")
#	elif score >= 60:
#		print("及格")
#	else :
#		print("需要努力")
#	match day:
#		"星期一":
#			print("星期一")
#		"星期二":
#			print("星期二")
#		_:
#			print("未知")
#	var result: String = "通过" if score >= 60 else "未通过"
#	print("result: ", result)

"""
2.循环语句
for 和 while
"""
#func _ready() -> void:
##	for i in range(50, 0, -5):
##		print(i)
#	var count := 0
#	while count < 5:
#		print(count)
#		count += 1
##		count = count + 1

"""
3 break：立刻结束当前循环，执行后续内容
 和 
continue：跳过当前这一次循环

4 and or not
"""
func _ready() -> void:
	var numbers = [1,2,3,4,5]
#	var target = 3
#	for n in numbers:
#		print("当前循环到：", n)
#		if n == target:
#			print("找到目标了！目标是：", target)
#			break # 调出循环
#	print("完成了循环！")
	for n in numbers:
		if n % 2 != 0 :
			continue
		print(n)
