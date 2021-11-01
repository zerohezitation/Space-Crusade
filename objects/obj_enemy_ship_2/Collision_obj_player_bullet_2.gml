/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 7E526FC1
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 69F7266D
/// @DnDArgument : "expr" "-20"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "enemy_health"
enemy_health += -20;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 2FBF39CA
/// @DnDArgument : "soundid" "snd_player_hit"
/// @DnDSaveInfo : "soundid" "snd_player_hit"
audio_play_sound(snd_player_hit, 0, 0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 53094F28
/// @DnDArgument : "var" "enemy_health"
/// @DnDArgument : "op" "3"
if(enemy_health <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 40FB00EC
	/// @DnDApplyTo : {obj_objective_controller}
	/// @DnDParent : 53094F28
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "enemies_destroyed"
	with(obj_objective_controller) {
	enemies_destroyed += 1;
	
	}

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 2BE1E441
	/// @DnDParent : 53094F28
	/// @DnDArgument : "soundid" "snd_enemy_explosion"
	/// @DnDSaveInfo : "soundid" "snd_enemy_explosion"
	audio_play_sound(snd_enemy_explosion, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5F9C90A1
	/// @DnDParent : 53094F28
	instance_destroy();
}