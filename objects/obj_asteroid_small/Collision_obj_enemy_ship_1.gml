/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 1F84A9A3
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 71D8FDF0
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 4F69ECB9
/// @DnDArgument : "soundid" "snd_enemy_explosion"
/// @DnDSaveInfo : "soundid" "snd_enemy_explosion"
audio_play_sound(snd_enemy_explosion, 0, 0);