if active 
{
	if hurts_enemies 
	{
		var _l = ds_list_create();
		collision_rectangle_list(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_enemy, 0, 1, _l, false)

		for(var i = 0; i < ds_list_size(_l); i++) {
			ds_list_find_value(_l, i).hurt(strength, damage_source);
		}

		if ds_list_size(_l) > 0
			scr_freeze(15);

		ds_list_destroy(_l);
	} else if hurts_player
	{
		// ignore if playing as Molt and not carrying item
		if instance_exists(obj_player) && obj_player.player_character == 1 && obj_player.carrying == -1
			exit
			
		var _l = ds_list_create();
		collision_rectangle_list(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_player, 0, 1, _l, false)

		if ds_list_size(_l) > 0 and obj_player.invinc == 0
			scr_freeze(10);
			
		for(var i = 0; i < ds_list_size(_l); i++) {
			ds_list_find_value(_l, i).hurt(strength);
		}
		
	
		ds_list_destroy(_l);
	}
}

if delete_immediately
	instance_destroy(id)
	
if follow != noone {
	x = follow.x + follow_off_x;
	y = follow.y + follow_off_y;
}