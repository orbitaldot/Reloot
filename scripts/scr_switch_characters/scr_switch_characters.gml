// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
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

}