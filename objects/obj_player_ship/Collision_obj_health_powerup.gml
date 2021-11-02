/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 206A4A6C
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5395D337
/// @DnDApplyTo : {obj_objective_controller}
/// @DnDArgument : "expr" "100"
/// @DnDArgument : "var" "health"
with(obj_objective_controller) {
health = 100;

}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 42B1E6B3
/// @DnDArgument : "soundid" "snd_powerup"
/// @DnDSaveInfo : "soundid" "snd_powerup"
audio_play_sound(snd_powerup, 0, 0);