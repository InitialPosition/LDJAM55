
drawing = true
target.hitpoints -= value

if target.hitpoints <= 0 {
	target.hitpoints = 0
	
	if target == obj_card_drawer {
		instance_create_layer(0, 0, "Instances_Info", obj_loss)
	} else {
		instance_create_layer(0, 0, "Instances_Info", obj_win)
	}
}



alarm[1] = 60
