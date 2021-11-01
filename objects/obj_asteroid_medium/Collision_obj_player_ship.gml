/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 13A63749
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 28DA04AB
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 716DDEA8
/// @DnDApplyTo : {obj_objective_controller}
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "lives"
with(obj_objective_controller) {
lives += -1;

}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 7E54836A
/// @DnDArgument : "soundid" "snd_player_explosion"
/// @DnDSaveInfo : "soundid" "snd_player_explosion"
audio_play_sound(snd_player_explosion, 0, 0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 64F5F3B4
/// @DnDArgument : "var" "lives"
if(lives == 0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1EB7DE18
	/// @DnDParent : 64F5F3B4
	/// @DnDArgument : "xpos" "400"
	/// @DnDArgument : "ypos" "500"
	/// @DnDArgument : "objectid" "obj_defeat"
	/// @DnDArgument : "layer" ""Instances_1""
	/// @DnDSaveInfo : "objectid" "obj_defeat"
	instance_create_layer(400, 500, "Instances_1", obj_defeat);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1F5973C6
else
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3C3492EA
	/// @DnDParent : 1F5973C6
	/// @DnDArgument : "xpos" "750"
	/// @DnDArgument : "ypos" "1150"
	/// @DnDArgument : "objectid" "obj_player_ship"
	/// @DnDSaveInfo : "objectid" "obj_player_ship"
	instance_create_layer(750, 1150, "Instances", obj_player_ship);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6CD6EB38
	/// @DnDApplyTo : {obj_objective_controller}
	/// @DnDParent : 1F5973C6
	/// @DnDArgument : "expr" "100"
	/// @DnDArgument : "var" "health"
	with(obj_objective_controller) {
	health = 100;
	
	}
}