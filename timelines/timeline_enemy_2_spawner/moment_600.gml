var inst = instance_create_layer(irandom_range(300, 1100), -200, "Instances", obj_enemy_ship_2);
	
with(inst)
{
	if(instance_exists(obj_player_ship))
	{
		direction = point_direction(inst.x, inst.y, obj_player_ship.x, obj_player_ship.y);
	}
	else
	{
		direction = 270;
	}
	
	hspeed = 1;
}

