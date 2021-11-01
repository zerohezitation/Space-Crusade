/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 169D35AC
/// @DnDArgument : "xpos" "irandom_range(100, 500)"
/// @DnDArgument : "ypos" "-60"
/// @DnDArgument : "objectid" "obj_enemy_ship_1"
/// @DnDSaveInfo : "objectid" "obj_enemy_ship_1"
instance_create_layer(irandom_range(100, 500), -60, "Instances", obj_enemy_ship_1);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 54334C60
/// @DnDArgument : "xpos" "irandom_range(900, 1300)"
/// @DnDArgument : "ypos" "-60"
/// @DnDArgument : "objectid" "obj_enemy_ship_1"
/// @DnDSaveInfo : "objectid" "obj_enemy_ship_1"
instance_create_layer(irandom_range(900, 1300), -60, "Instances", obj_enemy_ship_1);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 17688E70
/// @DnDArgument : "steps" "500"
/// @DnDArgument : "alarm" "2"
alarm_set(2, 500);