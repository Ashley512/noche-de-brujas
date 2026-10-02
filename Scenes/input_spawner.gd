class_name input_spawner extends Node2D

@export var input : PackedScene
@export var input_type : input.INPUT_TYPE

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func spawn_input(drop_speed):
	var instanced_input = input.instantiate()
	instanced_input.input_type = input_type
	instanced_input.drop_speed = drop_speed
	add_child(instanced_input)
