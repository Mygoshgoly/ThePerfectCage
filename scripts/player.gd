extends CharacterBody2D
class_name Player

@onready var flashlight: PointLight2D = $Flashlight
@onready var cam_remote_transform: RemoteTransform2D = $CamRemoteTransform
signal died

var speed = 300.0

func _ready() -> void:
	flashlight.enabled = false

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("leftClick"):
		pass
	elif Input.is_action_just_pressed("rightClick"):
		flashlight.enabled = not flashlight.enabled
	
func _process(delta: float) -> void:
	look_at(get_global_mouse_position())
	
	if Input.is_action_just_pressed("quit"):
		get_tree().quit()

func _physics_process(delta: float) -> void:
	var move_dir = Vector2(Input.get_axis("move_left", "move_right"),	Input.get_axis("move_up", "move_down")) #horizontal,vertical movement
	
	if move_dir != Vector2.ZERO:
		velocity = speed * move_dir.normalized()
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
		velocity.y = move_toward(velocity.y, 0, speed)
		
	move_and_slide()


func _on_hit_box_body_entered(body: Node2D) -> void:
	if body is Enemy:
		died.emit()
		queue_free()
