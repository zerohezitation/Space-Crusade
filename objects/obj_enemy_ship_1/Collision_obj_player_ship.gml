/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 0BADEF5E
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 59F4A208
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 63A615C5
/// @DnDApplyTo : {obj_objective_controller}
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "lives"
with(obj_objective_controller) {
lives += -1;

}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 04CC26BE
/// @DnDApplyTo : {obj_objective_controller}
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "enemies_destroyed"
with(obj_objective_controller) {
enemies_destroyed += 1;

}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 6239A120
/// @DnDArgument : "soundid" "snd_enemy_explosion"
/// @DnDSaveInfo : "soundid" "snd_enemy_explosion"
audio_play_sound(snd_enemy_explosion, 0, 0);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 099EB5BD
/// @DnDArgument : "soundid" "snd_player_explosion"
/// @DnDSaveInfo : "soundid" "snd_player_explosion"
audio_play_sound(snd_player_explosion, 0, 0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5EE6A556
/// @DnDArgument : "var" "lives"
if(lives == 0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 55057F8C
	/// @DnDParent : 5EE6A556
	/// @DnDArgument : "xpos" "400"
	/// @DnDArgument : "ypos" "500"
	/// @DnDArgument : "objectid" "obj_defeat"
	/// @DnDArgument : "layer" ""Instances_1""
	/// @DnDSaveInfo : "objectid" "obj_defeat"
	instance_create_layer(400, 500, "Instances_1", obj_defeat);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7DB6FECD
else
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4AD23673
	/// @DnDParent : 7DB6FECD
	/// @DnDArgument : "xpos" "750"
	/// @DnDArgument : "ypos" "1150"
	/// @DnDArgument : "objectid" "obj_player_ship"
	/// @DnDSaveInfo : "objectid" "obj_player_ship"
	instance_create_layer(750, 1150, "Instances", obj_player_ship);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7548D673
	/// @DnDApplyTo : {obj_objective_controller}
	/// @DnDParent : 7DB6FECD
	/// @DnDArgument : "expr" "100"
	/// @DnDArgument : "var" "health"
	with(obj_objective_controller) {
	health = 100;
	
	}
}