/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 48B7253D
/// @DnDArgument : "xpos" "irandom_range(100, 1300)"
/// @DnDArgument : "ypos" "-80"
/// @DnDArgument : "objectid" "obj_asteroid_small"
/// @DnDSaveInfo : "objectid" "obj_asteroid_small"
instance_create_layer(irandom_range(100, 1300), -80, "Instances", obj_asteroid_small);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 207A7C2A
/// @DnDArgument : "steps" "90"
alarm_set(0, 90);