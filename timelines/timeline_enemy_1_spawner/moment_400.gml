var spawn_number = choose(1, 2, 3);
var enemy_direction = choose(260, 270, 280);
var inst;
var inst2;
var inst3;


if(spawn_number == 1)
{
	inst = instance_create_layer(irandom_range(200, 1200), -80, "Instances", obj_enemy_ship_1);
	
	with(inst)
	{
		direction = enemy_direction;
		
		if(enemy_direction == 270)
		{
			speed = 3;
		}
	}
}

if(spawn_number == 2)
{
	inst = instance_create_layer(irandom_range(200, 1200), -80, "Instances", obj_enemy_ship_1);
	inst2 = instance_create_layer(inst.x + 100, -160, "Instances", obj_enemy_ship_1);
	
	with(inst)
	{
		direction = enemy_direction;
		if(enemy_direction == 270)
		{
			speed = 3;
		}
	}
	
	with(inst2)
	{
		direction = enemy_direction;
		if(enemy_direction == 270)
		{
			speed = 3;
		}
	}
}

if(spawn_number == 3)
{
	inst = instance_create_layer(irandom_range(200, 1200), -80, "Instances", obj_enemy_ship_1);
	inst2 = instance_create_layer(inst.x + 100, -160, "Instances", obj_enemy_ship_1);
	inst3 = instance_create_layer(inst.x - 100, -160, "Instances", obj_enemy_ship_1);
	
	with(inst)
	{
		direction = enemy_direction;
		if(enemy_direction == 270)
		{
			speed = 3;
		}
	}
	
	with(inst2)
	{
		direction = enemy_direction;
		if(enemy_direction == 270)
		{
			speed = 3;
		}
	}
	
	with(inst3)
	{
		direction = enemy_direction;
		if(enemy_direction == 270)
		{
			speed = 3;
		}
	}
}