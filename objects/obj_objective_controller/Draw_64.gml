/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 134E17C0
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "room_level_3"
if(room == room_level_3)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 176F36F0
	/// @DnDParent : 134E17C0
	/// @DnDArgument : "color" "$FF0000FF"
	draw_set_colour($FF0000FF & $ffffff);
	var l176F36F0_0=($FF0000FF >> 24);
	draw_set_alpha(l176F36F0_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 7DBD148C
	/// @DnDParent : 134E17C0
	/// @DnDArgument : "x1" "500"
	/// @DnDArgument : "y1" "20"
	/// @DnDArgument : "x2" "900 - critical_hits"
	/// @DnDArgument : "y2" "40"
	/// @DnDArgument : "fill" "1"
	draw_rectangle(500, 20, 900 - critical_hits, 40, 0);
}