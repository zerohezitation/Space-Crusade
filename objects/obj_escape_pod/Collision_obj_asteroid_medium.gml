/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 45206CD1
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 743C3340
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 6E8E1CC1
/// @DnDArgument : "soundid" "snd_pod_explosion"
/// @DnDSaveInfo : "soundid" "snd_pod_explosion"
audio_play_sound(snd_pod_explosion, 0, 0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 55E26737
/// @DnDApplyTo : {obj_objective_controller}
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "escape_pods_destroyed"
with(obj_objective_controller) {
escape_pods_destroyed += 1;

}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5315AEE9
/// @DnDApplyTo : {obj_objective_controller}
/// @DnDArgument : "var" "escape_pods_destroyed"
/// @DnDArgument : "value" "5"
with(obj_objective_controller) var l5315AEE9_0 = escape_pods_destroyed == 5;
if(l5315AEE9_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 37134C6A
	/// @DnDApplyTo : {obj_player_ship}
	/// @DnDParent : 5315AEE9
	with(obj_player_ship) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 67DA3D2E
	/// @DnDParent : 5315AEE9
	/// @DnDArgument : "xpos" "400"
	/// @DnDArgument : "ypos" "500"
	/// @DnDArgument : "objectid" "obj_defeat"
	/// @DnDArgument : "layer" ""Instances_1""
	/// @DnDSaveInfo : "objectid" "obj_defeat"
	instance_create_layer(400, 500, "Instances_1", obj_defeat);
}