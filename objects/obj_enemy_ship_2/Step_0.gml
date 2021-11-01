if(instance_exists(obj_player_ship))
{
	direction = point_direction(x, y, obj_player_ship.x, obj_player_ship.y);
}
else
{
	direction = 270;
}

if(y > room_height + 100)
{
	instance_destroy();
}

if(x < -100)
{
	instance_destroy();
}

if(x > room_width + 100)
{
	instance_destroy();
}