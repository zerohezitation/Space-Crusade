/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 594A56CE
/// @DnDArgument : "var" "other.x"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "x"
if(other.x <= x)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
	/// @DnDVersion : 1.1
	/// @DnDHash : 60C9BF88
	/// @DnDParent : 594A56CE
	/// @DnDArgument : "direction" "315"
	direction = choose(315);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 48E51ABE
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
	/// @DnDVersion : 1.1
	/// @DnDHash : 3DE7C7EC
	/// @DnDParent : 48E51ABE
	/// @DnDArgument : "direction" "225"
	direction = choose(225);
}