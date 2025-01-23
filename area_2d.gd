extends Area2D



func _on_body_entered(body):
	if body.is_in_group("kill") :
		var things = get_overlapping_bodies()
		for t in things:
			if t.has_method("Explode"):
				t.Explode()
		#get_tree().reload_current_scene()
