extends Node2D

var Down: bool = false
var Up: bool = false
var Left: bool = false
var Right: bool = false

@onready var area_2d: Area2D = $Detector/Area2D
@onready var arrow_generator: Node2D = $ArrowGenerator
@onready var arrow_generator_up: Node2D = $ArrowGeneratorUp


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
	if event.is_action_pressed("ui_test_up"):
		arrow_generator_up.make_arrow()
	if event.is_action_pressed("ui_test_down"):
		arrow_generator.make_arrow()

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
