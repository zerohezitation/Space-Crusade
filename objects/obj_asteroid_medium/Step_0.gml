/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 27A354A7
/// @DnDArgument : "angle" "0.2"
/// @DnDArgument : "angle_relative" "1"
image_angle += 0.2;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5C5B5EA2
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "1500"
if(y > 1500)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 185704AB
	/// @DnDParent : 5C5B5EA2
	instance_destroy();
}