/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 484BF89B
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7922049D
/// @DnDApplyTo : {obj_objective_controller}
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "lives"
with(obj_objective_controller) {
lives += 1;

}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 1C27E07E
/// @DnDArgument : "soundid" "snd_powerup"
/// @DnDSaveInfo : "soundid" "snd_powerup"
audio_play_sound(snd_powerup, 0, 0);