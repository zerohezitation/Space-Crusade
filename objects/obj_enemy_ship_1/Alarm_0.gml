var shotspeed = choose(1, 2)

if(shotspeed == 1)
{
	instance_create_layer(x - 10, y, "Instances", obj_enemy_bullet_1);
	audio_play_sound(snd_enemy_1_shot, 0, 0);	
}

if(shotspeed == 2)
{
	instance_create_layer(x - 10, y, "Instances", obj_enemy_bullet_1);
	audio_play_sound(snd_enemy_1_shot, 0, 0);
	alarm_set(1, 15);
}

alarm_set(0, 150);