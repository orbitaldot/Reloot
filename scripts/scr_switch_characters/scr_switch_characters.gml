function scr_switch_characters()
{
	with(obj_item)
		instance_destroy(self);
		
		
	with(obj_player)
	{
		
		sprite_index = spr_player_carrier;
		
		player_character = -1;
	}
	
	global.hp = global.hp_max;
	global.draw_hp = false;

}