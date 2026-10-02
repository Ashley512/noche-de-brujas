class_name input extends CharacterBody2D

@export var fall_speed : int = 100
var input_type : INPUT_TYPE
@onready var input_as_string : String = INPUT_TYPE.find_key(input_type)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	velocity.x = 0
	velocity.y = fall_speed
	pass # Replace with function body.
	

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_" + input_as_string):
		print("clicked it!")
	
	move_and_slide()

enum INPUT_TYPE {
	up,
	down,
	left,
	right
}
