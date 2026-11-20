extends Node2D
class_name Arrow

@export var arrow_speed : float = 1
@export var move_to_position : float = 700



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var tween = create_tween()
	tween.tween_property(self, "position", Vector2(position.x,move_to_position), arrow_speed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
