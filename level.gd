extends Node2D

func _physics_process(delta):
	var posY = $Player.posY()
	var posX = $Player.SPEED*delta
	
	


func _on_kill_zone_body_entered(body: Node2D):
	var things = $KillZone.get_overlapping_bodies()
	for t in things:
		if t.has_method("Explode"):
			t.Explode()
			$KillZone.queue_free()
