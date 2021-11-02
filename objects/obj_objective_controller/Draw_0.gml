/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 509B03BA
/// @DnDArgument : "code" "draw_set_color(c_white);$(13_10)draw_set_font(fnt_score);$(13_10)$(13_10)$(13_10)draw_text(20, 100, "Objectives:");$(13_10)$(13_10)if(room == room_level_1)$(13_10){$(13_10)	draw_sprite(spr_player_ship_small, 0, 300, 50);$(13_10)	draw_text(100, 40, "Saved: " + string(score));$(13_10)	draw_text(360, 40, "Lives: " + string(lives));$(13_10)	draw_sprite(spr_escape_pod, 0, 50, 50);$(13_10)	draw_text(1250, 40, "Level 1");$(13_10)	draw_set_font(fnt_objectives);$(13_10)	$(13_10)	if(escape_pods_saved == 0)$(13_10)	{$(13_10)		draw_set_color(c_white);$(13_10)		draw_text(20, 135, "Save 10 escape pods (" + string(escape_pods_saved) + "/10)");$(13_10)	}$(13_10)	else if(escape_pods_saved > 0 && escape_pods_saved < 10)$(13_10)	{$(13_10)		draw_set_color(c_yellow);$(13_10)		draw_text(20, 135, "Save 10 escape pods (" + string(escape_pods_saved) + "/10)");$(13_10)	}$(13_10)	else if(escape_pods_saved == 10)$(13_10)	{$(13_10)		draw_set_color(c_green);$(13_10)		draw_text(20, 135, "Save 10 escape pods (" + string(escape_pods_saved) + "/10)");$(13_10)	}$(13_10)$(13_10)	if(escape_pods_destroyed == 0)$(13_10)	{$(13_10)		draw_set_color(c_white);$(13_10)		draw_text(20, 165, "Do not let 5 escape pods be destroyed (" + string(escape_pods_destroyed) + "/5)");$(13_10)	}$(13_10)	else if(escape_pods_destroyed > 0 && escape_pods_destroyed < 5)$(13_10)	{$(13_10)		draw_set_color(c_orange);$(13_10)		draw_text(20, 165, "Do not let 5 escape pods be destroyed (" + string(escape_pods_destroyed) + "/5)");$(13_10)	}$(13_10)	else if(escape_pods_destroyed == 5)$(13_10)	{$(13_10)		draw_set_color(c_red);$(13_10)		draw_text(20, 165, "Do not let 5 escape pods be destroyed (" + string(escape_pods_destroyed) + "/5)");$(13_10)	}$(13_10)}$(13_10)else if(room == room_level_2)$(13_10){$(13_10)	draw_sprite(spr_player_ship_small, 0, 300, 50);$(13_10)	draw_text(100, 40, "Saved: " + string(score));$(13_10)	draw_text(360, 40, "Lives: " + string(lives));$(13_10)	draw_sprite(spr_supply_crate, 0, 50, 50);$(13_10)	draw_text(1250, 40, "Level 2");$(13_10)	draw_set_font(fnt_objectives);$(13_10)	$(13_10)	if(escape_pods_saved == 0)$(13_10)	{$(13_10)		draw_set_color(c_white);$(13_10)		draw_text(20, 135, "Save 15 supply crates (" + string(escape_pods_saved) + "/15)");$(13_10)	}$(13_10)	else if(escape_pods_saved > 0 && escape_pods_saved < 15)$(13_10)	{$(13_10)		draw_set_color(c_yellow);$(13_10)		draw_text(20, 135, "Save 15 supply crates (" + string(escape_pods_saved) + "/15)");$(13_10)	}$(13_10)	else if(escape_pods_saved >= 15)$(13_10)	{$(13_10)		draw_set_color(c_green);$(13_10)		draw_text(20, 135, "Save 15 supply crates (15/15)");$(13_10)	}$(13_10)	$(13_10)	if(enemies_destroyed == 0)$(13_10)	{$(13_10)		draw_set_color(c_white);$(13_10)		draw_text(20, 165, "Destroy 20 enemy ships (" + string(enemies_destroyed) + "/20)");$(13_10)	}$(13_10)	else if(enemies_destroyed > 0 && enemies_destroyed < 20)$(13_10)	{$(13_10)		draw_set_color(c_yellow);$(13_10)		draw_text(20, 165, "Destroy 20 enemy ships (" + string(enemies_destroyed) + "/20)");$(13_10)	}$(13_10)	else if(enemies_destroyed >= 20)$(13_10)	{$(13_10)		draw_set_color(c_green);$(13_10)		draw_text(20, 165, "Destroy 20 enemy ships (20/20)");$(13_10)	}$(13_10)$(13_10)	if(escape_pods_destroyed == 0)$(13_10)	{$(13_10)		draw_set_color(c_white);$(13_10)		draw_text(20, 195, "Do not let 5 supply crates be destroyed (" + string(escape_pods_destroyed) + "/5)");$(13_10)	}$(13_10)	else if(escape_pods_destroyed > 0 && escape_pods_destroyed < 5)$(13_10)	{$(13_10)		draw_set_color(c_orange);$(13_10)		draw_text(20, 195, "Do not let 5 supply crates be destroyed (" + string(escape_pods_destroyed) + "/5)");$(13_10)	}$(13_10)	else if(escape_pods_destroyed == 5)$(13_10)	{$(13_10)		draw_set_color(c_red);$(13_10)		draw_text(20, 195, "Do not let 5 supply crates be destroyed (" + string(escape_pods_destroyed) + "/5)");$(13_10)	}	$(13_10)}$(13_10)else if(room == room_level_3)$(13_10){$(13_10)	draw_sprite(spr_player_ship_small, 0, 50, 50);$(13_10)	draw_text(100, 40, "Lives: " + string(lives));$(13_10)	draw_text(1250, 40, "Level 3");$(13_10)	draw_set_font(fnt_objectives);$(13_10)	$(13_10)	if(boss_destroyed == 0)$(13_10)	{$(13_10)		draw_set_color(c_white);$(13_10)		draw_text(20, 135, "Defeat Zerath the Tormentor");$(13_10)	}$(13_10)	else if(boss_destroyed == 1)$(13_10)	{$(13_10)		draw_set_color(c_green);$(13_10)		draw_text(20, 135, "Defeat Zerath the Tormentor");$(13_10)	}	$(13_10)}$(13_10)$(13_10)$(13_10)"
draw_set_color(c_white);
draw_set_font(fnt_score);


draw_text(20, 100, "Objectives:");

if(room == room_level_1)
{
	draw_sprite(spr_player_ship_small, 0, 300, 50);
	draw_text(100, 40, "Saved: " + string(score));
	draw_text(360, 40, "Lives: " + string(lives));
	draw_sprite(spr_escape_pod, 0, 50, 50);
	draw_text(1250, 40, "Level 1");
	draw_set_font(fnt_objectives);
	
	if(escape_pods_saved == 0)
	{
		draw_set_color(c_white);
		draw_text(20, 135, "Save 10 escape pods (" + string(escape_pods_saved) + "/10)");
	}
	else if(escape_pods_saved > 0 && escape_pods_saved < 10)
	{
		draw_set_color(c_yellow);
		draw_text(20, 135, "Save 10 escape pods (" + string(escape_pods_saved) + "/10)");
	}
	else if(escape_pods_saved == 10)
	{
		draw_set_color(c_green);
		draw_text(20, 135, "Save 10 escape pods (" + string(escape_pods_saved) + "/10)");
	}

	if(escape_pods_destroyed == 0)
	{
		draw_set_color(c_white);
		draw_text(20, 165, "Do not let 5 escape pods be destroyed (" + string(escape_pods_destroyed) + "/5)");
	}
	else if(escape_pods_destroyed > 0 && escape_pods_destroyed < 5)
	{
		draw_set_color(c_orange);
		draw_text(20, 165, "Do not let 5 escape pods be destroyed (" + string(escape_pods_destroyed) + "/5)");
	}
	else if(escape_pods_destroyed == 5)
	{
		draw_set_color(c_red);
		draw_text(20, 165, "Do not let 5 escape pods be destroyed (" + string(escape_pods_destroyed) + "/5)");
	}
}
else if(room == room_level_2)
{
	draw_sprite(spr_player_ship_small, 0, 300, 50);
	draw_text(100, 40, "Saved: " + string(score));
	draw_text(360, 40, "Lives: " + string(lives));
	draw_sprite(spr_supply_crate, 0, 50, 50);
	draw_text(1250, 40, "Level 2");
	draw_set_font(fnt_objectives);
	
	if(escape_pods_saved == 0)
	{
		draw_set_color(c_white);
		draw_text(20, 135, "Save 15 supply crates (" + string(escape_pods_saved) + "/15)");
	}
	else if(escape_pods_saved > 0 && escape_pods_saved < 15)
	{
		draw_set_color(c_yellow);
		draw_text(20, 135, "Save 15 supply crates (" + string(escape_pods_saved) + "/15)");
	}
	else if(escape_pods_saved >= 15)
	{
		draw_set_color(c_green);
		draw_text(20, 135, "Save 15 supply crates (15/15)");
	}
	
	if(enemies_destroyed == 0)
	{
		draw_set_color(c_white);
		draw_text(20, 165, "Destroy 20 enemy ships (" + string(enemies_destroyed) + "/20)");
	}
	else if(enemies_destroyed > 0 && enemies_destroyed < 20)
	{
		draw_set_color(c_yellow);
		draw_text(20, 165, "Destroy 20 enemy ships (" + string(enemies_destroyed) + "/20)");
	}
	else if(enemies_destroyed >= 20)
	{
		draw_set_color(c_green);
		draw_text(20, 165, "Destroy 20 enemy ships (20/20)");
	}

	if(escape_pods_destroyed == 0)
	{
		draw_set_color(c_white);
		draw_text(20, 195, "Do not let 5 supply crates be destroyed (" + string(escape_pods_destroyed) + "/5)");
	}
	else if(escape_pods_destroyed > 0 && escape_pods_destroyed < 5)
	{
		draw_set_color(c_orange);
		draw_text(20, 195, "Do not let 5 supply crates be destroyed (" + string(escape_pods_destroyed) + "/5)");
	}
	else if(escape_pods_destroyed == 5)
	{
		draw_set_color(c_red);
		draw_text(20, 195, "Do not let 5 supply crates be destroyed (" + string(escape_pods_destroyed) + "/5)");
	}	
}
else if(room == room_level_3)
{
	draw_sprite(spr_player_ship_small, 0, 50, 50);
	draw_text(100, 40, "Lives: " + string(lives));
	draw_text(1250, 40, "Level 3");
	draw_set_font(fnt_objectives);
	
	if(boss_destroyed == 0)
	{
		draw_set_color(c_white);
		draw_text(20, 135, "Defeat Zerath the Tormentor");
	}
	else if(boss_destroyed == 1)
	{
		draw_set_color(c_green);
		draw_text(20, 135, "Defeat Zerath the Tormentor");
	}	
}

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 246C65FB
/// @DnDApplyTo : {obj_player_ship}
/// @DnDArgument : "x1" "-80"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "120"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "80"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "135"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "value" "health"
/// @DnDArgument : "barcol" "$FF000000"
/// @DnDArgument : "mincol" "$FF0000FF"
/// @DnDArgument : "maxcol" "$FF00FF00"
with(obj_player_ship) draw_healthbar(x + -80, y + 120, x + 80, y + 135, health, $FFFFFFFF & $FFFFFF, $FF0000FF & $FFFFFF, $FF00FF00 & $FFFFFF, 0, (($FFFFFFFF>>24) != 0), (($FF000000>>24) != 0));