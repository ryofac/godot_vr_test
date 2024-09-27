extends PickupAbleBody3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	original_transform = global_transform

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if global_position.y < 0:
		global_transform = original_transform
		freeze = true
