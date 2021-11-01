/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 02DE4E0F
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 58F9C7DE
/// @DnDArgument : "soundid" "snd_asteroid_impact"
/// @DnDSaveInfo : "soundid" "snd_asteroid_impact"
audio_play_sound(snd_asteroid_impact, 0, 0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4211B839
/// @DnDApplyTo : {obj_objective_controller}
/// @DnDArgument : "expr" "10"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "critical_hits"
with(obj_objective_controller) {
critical_hits += 10;

}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 48509926
/// @DnDApplyTo : {obj_objective_controller}
/// @DnDArgument : "var" "critical_hits"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "400"
with(obj_objective_controller) var l48509926_0 = critical_hits >= 400;
if(l48509926_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 43F523EC
	/// @DnDParent : 48509926
	instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4C6971E8
	/// @DnDApplyTo : {obj_player_ship}
	/// @DnDParent : 48509926
	with(obj_player_ship) instance_destroy();

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 05B925BF
	/// @DnDApplyTo : {obj_objective_controller}
	/// @DnDParent : 48509926
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "boss_destroyed"
	with(obj_objective_controller) {
	boss_destroyed += 1;
	
	}

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 25F81A11
	/// @DnDParent : 48509926
	/// @DnDArgument : "xpos" "350"
	/// @DnDArgument : "ypos" "500"
	/// @DnDArgument : "objectid" "obj_victory"
	/// @DnDSaveInfo : "objectid" "obj_victory"
	instance_create_layer(350, 500, "Instances", obj_victory);
}