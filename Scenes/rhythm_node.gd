extends AudioStreamPlayer2D

@export var song : Song 
var tempo : float


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	tempo = song.beats_per_min / 60
	$TempoTimer.wait_time = tempo
	$TempoTimer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_tempo_timer_timeout() -> void:
	#play beat sound
	
	#generate next set of inputs
	for n : input_spawner in $InputSpawns.get_children():
		if (randf() < 0.5):
			n.spawn_input(tempo / 2)


func _on_destroyer_area_body_entered(body: Node2D) -> void:
	body.queue_free()
