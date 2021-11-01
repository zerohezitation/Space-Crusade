/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 48B7253D
/// @DnDArgument : "xpos" "irandom_range(200, 1200)"
/// @DnDArgument : "ypos" "-180"
/// @DnDArgument : "objectid" "obj_asteroid_medium"
/// @DnDSaveInfo : "objectid" "obj_asteroid_medium"
instance_create_layer(irandom_range(200, 1200), -180, "Instances", obj_asteroid_medium);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 36647590
/// @DnDArgument : "steps" "180"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 180);