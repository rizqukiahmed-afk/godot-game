extends Node

var points = 0 
@onready var label_points: Label = $"../UI/Panel/LabelPoints"
var target_point = 10
@onready var panel: Panel = $"../PopUp/Panel"

func check_win():
	if points >= target_point:
		panel.show()


func add_score():
	points += 1
	print(points)
	label_points.text = "orbs:" + str(points)
	check_win()
