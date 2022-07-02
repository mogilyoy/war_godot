extends KinematicBody

var vel: Vector3 = Vector3()  # вектор скорости челикса
var gravity: float = 20.0
var health = 100
var jumpforce = 20
var damage = 150

onready var gun = $M98

# Called when the node enters the scene tree for the first time.
func _ready():
	#vel.z = 3
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if health <= 0:
		queue_free()
		
func _physics_process(delta):
	vel.y -= gravity*delta
	vel.x = 0
	vel.z = 0
	move_and_slide(vel, Vector3.UP)

		
func _on_Area_body_entered(body):
	if body.is_in_group('left'):
		body.health -= damage

func _on_Timer_timeout():
	gun.GunAnimation(-1000)
