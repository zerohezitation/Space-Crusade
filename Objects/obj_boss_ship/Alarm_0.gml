/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 4D5725BE
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_enemy_bullet_2"
/// @DnDSaveInfo : "objectid" "obj_enemy_bullet_2"
instance_create_layer(x + 0, y + 0, "Instances", obj_enemy_bullet_2);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 1E27D9F7
/// @DnDArgument : "steps" "210"
alarm_set(0, 210);