/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4C344AE3
instance_destroy();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 43FD7280
/// @DnDArgument : "soundid" "snd_player_hit"
/// @DnDSaveInfo : "soundid" "snd_player_hit"
audio_play_sound(snd_player_hit, 0, 0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 07EE1BAC
/// @DnDApplyTo : {obj_objective_controller}
/// @DnDArgument : "expr" "-15"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "health"
with(obj_objective_controller) {
health += -15;

}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4B64C82B
/// @DnDArgument : "var" "health"
/// @DnDArgument : "op" "3"
if(health <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 003B5B1F
	/// @DnDApplyTo : other
	/// @DnDParent : 4B64C82B
	with(other) instance_destroy();

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 73603213
	/// @DnDParent : 4B64C82B
	/// @DnDArgument : "soundid" "snd_player_explosion"
	/// @DnDSaveInfo : "soundid" "snd_player_explosion"
	audio_play_sound(snd_player_explosion, 0, 0);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1094EACF
	/// @DnDApplyTo : {obj_objective_controller}
	/// @DnDParent : 4B64C82B
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "lives"
	with(obj_objective_controller) {
	lives += -1;
	
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 75489E29
	/// @DnDParent : 4B64C82B
	/// @DnDArgument : "var" "lives"
	if(lives == 0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7B50B00F
		/// @DnDParent : 75489E29
		/// @DnDArgument : "xpos" "350"
		/// @DnDArgument : "ypos" "400"
		/// @DnDArgument : "objectid" "obj_defeat"
		/// @DnDArgument : "layer" ""Instances_1""
		/// @DnDSaveInfo : "objectid" "obj_defeat"
		instance_create_layer(350, 400, "Instances_1", obj_defeat);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 6DA73FAD
	/// @DnDParent : 4B64C82B
	else
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4BC233E2
		/// @DnDParent : 6DA73FAD
		/// @DnDArgument : "xpos" "750"
		/// @DnDArgument : "ypos" "1150"
		/// @DnDArgument : "objectid" "obj_player_ship"
		/// @DnDSaveInfo : "objectid" "obj_player_ship"
		instance_create_layer(750, 1150, "Instances", obj_player_ship);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7DC8FA14
		/// @DnDApplyTo : {obj_objective_controller}
		/// @DnDParent : 6DA73FAD
		/// @DnDArgument : "expr" "100"
		/// @DnDArgument : "var" "health"
		with(obj_objective_controller) {
		health = 100;
		
		}
	}
}