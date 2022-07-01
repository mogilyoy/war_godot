extends Camera



func _physics_process(delta):
	if Input.is_action_pressed("left"):
		transform.origin.z = lerp(transform.origin.z, transform.origin.z + 15, 3*delta)
		
	if Input.is_action_pressed("right"):
		transform.origin.z = lerp(transform.origin.z, transform.origin.z - 15, 3*delta)
		
	if Input.is_action_pressed("forward"):
		transform.origin.x = lerp(transform.origin.x, transform.origin.x - 15, 3*delta)
		
	if Input.is_action_pressed("backward"):
		transform.origin.x = lerp(transform.origin.x, transform.origin.x + 15, 3*delta)
	
		

