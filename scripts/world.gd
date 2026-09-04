extends Node2D

@onready var player: CharacterBody2D = $Player
@onready var main_cam: Camera2D = $MainCam


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	player.died.connect(_on_player_died)
	player.cam_remote_transform.remote_path = main_cam.get_path()

func _on_player_died():
	print("GAME OVER")
	get_tree().create_timer(3).timeout.connect(get_tree().reload_current_scene)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
