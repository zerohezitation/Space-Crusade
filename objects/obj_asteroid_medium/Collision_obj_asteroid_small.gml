/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 618E557E
/// @DnDArgument : "var" "other.x"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "x"
if(other.x < x)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 62EC97D9
	/// @DnDApplyTo : other
	/// @DnDParent : 618E557E
	with(other) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4C0A1F4B
	/// @DnDParent : 618E557E
	/// @DnDArgument : "xpos" "-50"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "-90"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_asteroid_collision"
	/// @DnDArgument : "layer" ""Instances_1""
	/// @DnDSaveInfo : "objectid" "obj_asteroid_collision"
	instance_create_layer(x + -50, y + -90, "Instances_1", obj_asteroid_collision);

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
	/// @DnDVersion : 1.1
	/// @DnDHash : 00BC2812
	/// @DnDParent : 618E557E
	/// @DnDArgument : "direction" "315"
	direction = choose(315);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 33466E14
else
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 35D87231
	/// @DnDApplyTo : other
	/// @DnDParent : 33466E14
	with(other) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2653BEDD
	/// @DnDParent : 33466E14
	/// @DnDArgument : "xpos" "50"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "-90"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_asteroid_collision"
	/// @DnDArgument : "layer" ""Instances_1""
	/// @DnDSaveInfo : "objectid" "obj_asteroid_collision"
	instance_create_layer(x + 50, y + -90, "Instances_1", obj_asteroid_collision);

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
	/// @DnDVersion : 1.1
	/// @DnDHash : 3C59EF83
	/// @DnDParent : 33466E14
	/// @DnDArgument : "direction" "225"
	direction = choose(225);
}