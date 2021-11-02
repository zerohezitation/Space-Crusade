/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 394E6127
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 529A7D8B
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 6D4EBE58
/// @DnDArgument : "soundid" "snd_pod_explosion"
/// @DnDSaveInfo : "soundid" "snd_pod_explosion"
audio_play_sound(snd_pod_explosion, 0, 0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4A311FC1
/// @DnDApplyTo : {obj_objective_controller}
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "escape_pods_destroyed"
with(obj_objective_controller) {
escape_pods_destroyed += 1;

}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 13B01B0F
/// @DnDApplyTo : {obj_objective_controller}
/// @DnDArgument : "var" "escape_pods_destroyed"
/// @DnDArgument : "value" "5"
with(obj_objective_controller) var l13B01B0F_0 = escape_pods_destroyed == 5;
if(l13B01B0F_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 70D5894A
	/// @DnDApplyTo : {obj_player_ship}
	/// @DnDParent : 13B01B0F
	with(obj_player_ship) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 47ADB228
	/// @DnDParent : 13B01B0F
	/// @DnDArgument : "xpos" "350"
	/// @DnDArgument : "ypos" "500"
	/// @DnDArgument : "objectid" "obj_defeat"
	/// @DnDArgument : "layer" ""Instances_1""
	/// @DnDSaveInfo : "objectid" "obj_defeat"
	instance_create_layer(350, 500, "Instances_1", obj_defeat);
}