sequence = -1;
timer = 0;

function player_switch_sequence(t) {
	if t == 0 
	{	
		caravan_original_x = obj_caravan.x;
		global.player_control = 0;
		
		audio_stop_sound(mus_level);
		obj_player.player_character = 2;
		audio_play_sound(mus_clear, 999, 0, 1, 0, 1.05);	
		obj_caravan.x = -800;
		caravan_arrived = false;
		obj_caravan.image_alpha = 1;
	}
	
	if t == 120 
	{
		with(obj_enemyspawn)
			spawn_enemy();
		
		with(obj_enemy)
			invinc = 400;
			
		with(obj_bigdoor)
			open = true;
			
		with(obj_littledoor)
			open = true;
			
		obj_player.player_character = -1;
		
		obj_camera.target = obj_characterswitch_cam_anchor;
		obj_camera.xspeed = 6;	
		global.potions = 0;
		global.bombs = 0;
	}
	
	// move caravan
	if t > 120 && obj_caravan.x < caravan_original_x {
		obj_caravan.x+=2;	
	} else if obj_caravan.x >= caravan_original_x and obj_player.x >= 2500
	{
		obj_player.x = obj_caravan.x;
		obj_player.y = obj_caravan.y - 16;
		obj_player.vel_y = -2;
		obj_player.image_xscale = 1;
	}
	
	if t == 180 
	{
		scr_switch_characters();
	}
	
	if t == 600 
	{
		instance_create_depth(0,0,-9999, obj_restock_text);
	}
	
	if t > 600 and obj_player.yprevious == obj_player.yprevious {
		if obj_player.x < obj_caravan.x + 40
			obj_player.x += 2;
	}
	
	if t > 600 and !instance_exists(obj_restock_text)
	{
		if global.chests_opened > 0 
		{
			audio_play_sound(mus_level, 999, 1, 1, 0, 1.05);
			obj_camera.target = obj_player;
			obj_player.player_character = 1;
			obj_camera.xspeed = 2;
			sequence = -1;
			global.player_control = true;	
		} else {
			sequence = 2;
			timer = 0;
		}
	}
}



function no_chests_sequence(t) {
	if t < 140 {
		obj_player.image_xscale = power(-1, t mod 60 > 30);	
	}
	
	if t == 160 {
		obj_player.sprite_index = spr_player_shrug;
	}
	
	if t == 220
	{	
		obj_player.player_character = 4;
		audio_play_sound(mus_clear, 0, 0, 1, 0, .75);	
	}
	
	if t > 220 and obj_player.x >= obj_caravan.x and obj_camera.target != obj_caravan {
		obj_player.sprite_index = spr_player_carrier;
		obj_player.image_xscale = -1;
		
		obj_player.x -= 2;
		
	} else if t > 220 and obj_player.x <= obj_caravan.x {
		
		obj_camera.target = obj_caravan;
		obj_player.x += 256;
		obj_player.invinc = 9999;
		
		obj_caravan.image_xscale = 1;
		
		
	} else if t > 220 {
		obj_caravan.x -= 2;	
	}
	
	if obj_caravan.x <= -256 and !instance_exists(obj_whitefade)
	{
		var _fadeout = instance_create_depth(x, y, -9999, obj_whitefade);
		_fadeout.image_blend = c_black;
		_fadeout.newroom = room_menu;
	}
}

function all_chests_restocked(t) 
{
	if t == 0 {
		obj_camera.target = obj_caravan;
		obj_player.x += 256;
		obj_player.invinc = 9999;
		
		obj_caravan.image_xscale = 1;
		
		audio_sound_gain(mus_level, 0, 1000);
	}
	
	if t == 60 {
		audio_play_sound(mus_ending, 100, 0, 1, 0, 1.05);
		audio_stop_sound(mus_level);
		
	}
	
	if t > 60 {
		obj_player.player_character = 3
		obj_caravan.x -= 2;
	}
	
	if t > 280 and !instance_exists(obj_whitefade) 
	{
		var _fadeout = instance_create_depth(x, y, -9999, obj_whitefade);
		_fadeout.image_blend = c_black;
		_fadeout.newroom = room_menu;
	}
}
