extends Node2D

var Down: bool = false
var Up: bool = false
var Left: bool = false
var Right: bool = false

@onready var area_2d: Area2D = $Detector/Area2D

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("Down1"):
		Down= true
	else:
		Down = false
	if event.is_action_pressed("Up2"):
		Up= true
	else:
		Up = false
	if event.is_action_pressed("Left3"):
		Left= true
	else:
		Left = false
	if event.is_action_pressed("Right4"):
		Right= true
	else:
		Right = false
		
func _process(_delta: float) -> void:
	for x in area_2d.get_overlapping_areas():
		if Down == true and x.name == "Down":
			print("ddddddddd")
		if Up == true and x.name == "Up":
			print("ffffffff")
		if Left == true and x.name == "Left":
			print("jjjjjjj")
		if Right == true and x.name == "Right":
			print("kkkkkkkkk")
