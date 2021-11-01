/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 13A63749
instance_destroy();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 473995E5
/// @DnDApplyTo : {obj_objective_controller}
/// @DnDArgument : "expr" "-50"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "health"
with(obj_objective_controller) {
health += -50;

}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 62EDAF65
/// @DnDArgument : "soundid" "snd_asteroid_impact"
/// @DnDSaveInfo : "soundid" "snd_asteroid_impact"
audio_play_sound(snd_asteroid_impact, 0, 0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 79884AB0
/// @DnDArgument : "var" "health"
/// @DnDArgument : "op" "3"
if(health <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 110F36BC
	/// @DnDApplyTo : other
	/// @DnDParent : 79884AB0
	with(other) instance_destroy();

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 10FE651D
	/// @DnDParent : 79884AB0
	/// @DnDArgument : "soundid" "snd_player_explosion"
	/// @DnDSaveInfo : "soundid" "snd_player_explosion"
	audio_play_sound(snd_player_explosion, 0, 0);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 716DDEA8
	/// @DnDApplyTo : {obj_objective_controller}
	/// @DnDParent : 79884AB0
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "lives"
	with(obj_objective_controller) {
	lives += -1;
	
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 64F5F3B4
	/// @DnDParent : 79884AB0
	/// @DnDArgument : "var" "lives"
	if(lives == 0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1EB7DE18
		/// @DnDParent : 64F5F3B4
		/// @DnDArgument : "xpos" "350"
		/// @DnDArgument : "ypos" "400"
		/// @DnDArgument : "objectid" "obj_defeat"
		/// @DnDArgument : "layer" ""Instances_1""
		/// @DnDSaveInfo : "objectid" "obj_defeat"
		instance_create_layer(350, 400, "Instances_1", obj_defeat);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 68B2A266
	/// @DnDParent : 79884AB0
	else
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 60779B7F
		/// @DnDParent : 68B2A266
		/// @DnDArgument : "xpos" "750"
		/// @DnDArgument : "ypos" "1150"
		/// @DnDArgument : "objectid" "obj_player_ship"
		/// @DnDSaveInfo : "objectid" "obj_player_ship"
		instance_create_layer(750, 1150, "Instances", obj_player_ship);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 60A153C0
		/// @DnDApplyTo : {obj_objective_controller}
		/// @DnDParent : 68B2A266
		/// @DnDArgument : "expr" "100"
		/// @DnDArgument : "var" "health"
		with(obj_objective_controller) {
		health = 100;
		
		}
	}
}