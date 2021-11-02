/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 74120C82
instance_destroy();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 081A51E8
/// @DnDArgument : "soundid" "snd_collect_escape_pod"
/// @DnDSaveInfo : "soundid" "snd_collect_escape_pod"
audio_play_sound(snd_collect_escape_pod, 0, 0);

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 48B107C4
/// @DnDApplyTo : {obj_objective_controller}
/// @DnDArgument : "score" "1"
/// @DnDArgument : "score_relative" "1"
with(obj_objective_controller) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(1);
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 28BC5A39
/// @DnDApplyTo : {obj_objective_controller}
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "escape_pods_saved"
with(obj_objective_controller) {
escape_pods_saved += 1;

}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5CEF812D
/// @DnDApplyTo : {obj_objective_controller}
/// @DnDArgument : "var" "escape_pods_saved"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "15"
with(obj_objective_controller) var l5CEF812D_0 = escape_pods_saved >= 15;
if(l5CEF812D_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 416FC5C9
	/// @DnDApplyTo : {obj_objective_controller}
	/// @DnDParent : 5CEF812D
	/// @DnDArgument : "var" "enemies_destroyed"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "20"
	with(obj_objective_controller) var l416FC5C9_0 = enemies_destroyed >= 20;
	if(l416FC5C9_0)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 47EF606B
		/// @DnDApplyTo : {obj_player_ship}
		/// @DnDParent : 416FC5C9
		with(obj_player_ship) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 691199D1
		/// @DnDParent : 416FC5C9
		/// @DnDArgument : "xpos" "350"
		/// @DnDArgument : "ypos" "500"
		/// @DnDArgument : "objectid" "obj_victory"
		/// @DnDArgument : "layer" ""Instances_1""
		/// @DnDSaveInfo : "objectid" "obj_victory"
		instance_create_layer(350, 500, "Instances_1", obj_victory);
	}
}