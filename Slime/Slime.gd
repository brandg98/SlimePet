extends KinematicBody2D

onready var animationPlayer = $AnimationPlayer
onready var wanderController = $WanderContoller

var wanderStartPoint
var wanderEndPoint

const MAX_SPEED = 20
const ACCELERATION = 20
const FRICTION = 200

# States
enum {
	IDLE,
	WANDER
}

var state = IDLE

var velocity = Vector2.ZERO

func _ready():
	animationPlayer.play("Idle")

func _physics_process(delta):
	
	match state:
		# 
		IDLE:
			animationPlayer.play("Idle")
			velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)
		
		WANDER:
			animationPlayer.play("Move")

func update_wander_parameters():
	wanderController.set_wander_range(wanderStartPoint, wanderEndPoint)
