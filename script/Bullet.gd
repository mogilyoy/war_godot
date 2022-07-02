extends RigidBody

const damage = 500
const speed = 2

onready var raycast = $RayCast

func _ready():
	set_as_toplevel(true)
	

func SHOOT(vect):
	self.look_at(Vector3(self.transform.origin.x, self.transform.origin.y, vect), Vector3.UP)
	apply_impulse(transform.basis.z, -transform.basis.z * speed)
	
func _physics_process(delta):
	if raycast.is_colliding():
		var body = raycast.get_collider()
		if body.is_in_group('human'):
			body.health -= damage
			queue_free()
		else:
			queue_free()
	


func _on_Timer_timeout():
	queue_free()# Replace with function body.
