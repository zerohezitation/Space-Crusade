/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 1ADC6C78
/// @DnDArgument : "angle" "0.1"
/// @DnDArgument : "angle_relative" "1"
image_angle += 0.1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 052295BA
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "1500"
if(y > 1500)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6C182E9B
	/// @DnDParent : 052295BA
	instance_destroy();
}