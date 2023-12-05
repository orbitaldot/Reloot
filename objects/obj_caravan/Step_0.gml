if place_meeting(x, y, obj_player) and obj_player.player_character == 1 and obj_player.carrying == -1 {
	if ds_list_size(global.item_list) > 0
	{
		obj_player.carrying = ds_list_find_value(global.item_list, 0);
	}
	else 
	{
		obj_sequence_control.sequence = 3;
		obj_sequence_control.timer = 0;
	}
}