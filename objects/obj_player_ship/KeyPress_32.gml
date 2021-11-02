if(weapon_powerup == 0)
{
	if(can_shoot < 0)
	{
		exit;
	}
	
	var inst = instance_create_layer(x + 50, y + 50, "Instances", obj_player_bullet_2);
	var inst2 = instance_create_layer(x - 60, y + 50, "Instances", obj_player_bullet_2);
	audio_play_sound(snd_player_shot_2, 0, 0);
	
	with(inst)
	{
		direction = 92;
	}
	
	with(inst2)
	{
		direction = 88;
	}
	
	can_shoot = -20;
}
else if(weapon_powerup == 1)
{
	if(can_shoot < 0)
	{
		exit;
	}
	
	if(weapon_time > 450)
	{
		weapon_powerup = 0;
		exit;
	}
	
	var inst = instance_create_layer(x + -14, y + -110, "Instances", obj_player_bullet_1);
	var inst1 = instance_create_layer(x + 50, y + 50, "Instances", obj_player_bullet_2);
	var inst2 = instance_create_layer(x - 60, y + 50, "Instances", obj_player_bullet_2);
	audio_play_sound(snd_player_shot_2, 0, 0);
	audio_play_sound(snd_player_shot_shield_disruptor, 0, 0);
	
	with(inst)
	{
		direction = 90;
	}
	
	with(inst1)
	{
		direction = 92;
	}
	
	with(inst2)
	{
		direction = 88;
	}
	
	
	can_shoot = -15;
}
