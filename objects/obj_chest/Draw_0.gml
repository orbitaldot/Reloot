
if restocked
{
	var _rays = 6;
	
	gpu_set_blendmode(bm_add);
	for(var i = 0; i < _rays; i++) 
	{
		draw_sprite_ext(spr_gradient, 0, x, y - 8, 1.5, 1.5, i/_rays*360 + global.tick, c_white, 1);
	}
	gpu_set_blendmode(bm_normal);
}

draw_self();


if open and obj_player.player_character == 1 {
	var _float_y = dsin(global.tick*3)*2;
	draw_sprite(spr_chest_bubble, 0, x, y - 16 + _float_y);
	
	var _indicator_col = c_red;
	if item_within == 0
		draw_sprite(spr_item_potion, 0, x, y - 26 + _float_y);
	else if item_within == 1 
	{
		draw_sprite(spr_item_bomb, 0, x, y - 26 + _float_y);
		_indicator_col = c_teal;
	}
	
	scr_draw_indicator(x, y, _indicator_col);
		
	// restock chest
	if place_meeting(x,y,obj_player) and obj_player.carrying == item_within {
		open = false;
		obj_player.carrying = -1;
		sprite_index = spr_chest;
		audio_play_sound(sfx_chestlock, 0, 0, 1, 0, 1.);
		
		global.chests_opened--;
		restocked = true;
		
		ds_list_delete(global.item_list, 0);
		
		vel_y = -3;
	}
}