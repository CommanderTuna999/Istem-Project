extends CharacterBody2D
var speed = 300
var aggro = false
var chase_subject = null





func _process(delta):
	var direction = global_position.direction_to(chase_subject.global_position)
	print(direction)
	#if direction < 0:
		#Sprite2D.flip_h = true
	#elif direction > 0:
		#Sprite2D.flip_h = false
		
		
		
func _on_aggro_area_body_entered(body):
	chase_subject = body
	aggro = true
	print('entered')
	
	
	
func _on_aggro_area_body_exited(body: Node2D) -> void:
	chase_subject = null
	aggro = false
	print("exited")



func _physics_process(_delta):
	if aggro:
		position = position.move_toward(chase_subject.position, speed * _delta)
		move_and_slide()
	else:
		velocity = Vector2.ZERO

	
		
		
		
		
		
	
