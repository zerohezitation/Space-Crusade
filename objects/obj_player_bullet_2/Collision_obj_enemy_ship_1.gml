/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 7E526FC1
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 78D41FF7
instance_destroy();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 2FBF39CA
/// @DnDArgument : "soundid" "snd_enemy_explosion"
/// @DnDSaveInfo : "soundid" "snd_enemy_explosion"
audio_play_sound(snd_enemy_explosion, 0, 0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 40FB00EC
/// @DnDApplyTo : {obj_objective_controller}
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "enemies_destroyed"
with(obj_objective_controller) {
enemies_destroyed += 1;

}