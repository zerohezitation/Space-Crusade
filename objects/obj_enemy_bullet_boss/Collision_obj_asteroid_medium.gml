/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 06BF7E64
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 091173F0
/// @DnDArgument : "soundid" "snd_asteroid_impact"
/// @DnDSaveInfo : "soundid" "snd_asteroid_impact"
audio_play_sound(snd_asteroid_impact, 0, 0);