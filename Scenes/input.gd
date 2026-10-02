class_name input extends PathFollow2D

@export var drop_speed : float = 1
var input_type : INPUT_TYPE
@onready var input_as_string : String = INPUT_TYPE.find_key(input_type)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	

func _process(delta: float) -> void:
	var progress : float = get_progress_ratio() + drop_speed * delta
	
	if progress > 1:
		queue_free()
	else:
		set_progress_ratio(progress)
	
	if Input.is_action_just_pressed("ui_" + input_as_string):
		print("asfd")

enum INPUT_TYPE {
	up,
	down,
	left,
	right
}
