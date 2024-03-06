if invinc > 1
{
	image_alpha = (invinc mod 4)/4;
	invinc--;
	
	if player_character == 1 && carrying = -1
		global.hp = global.hp_max;
	
	if global.hp <= 0 {
		if player_character == 0
			global.player_control = false;
		else {
			
			audio_play_sound(sfx_rattat, 0, 0, 1, 0, .95);
			
			// item shatter
			var _n = 0;
			var _dirs = [
				[0,0], [1,0], [0,1], [1,1]
			];
			while (_n < 4)
			{
				var _item_shard = instance_create(x,y,obj_item_shard);
				_item_shard.quadrant = _dirs[_n]
				
				_item_shard.vspeed = -3 + 2 * _dirs[_n][1];
				_item_shard.hspeed = -.5 + _dirs[_n][0];
				
				_item_shard.gravity = .2;
				
				if carrying == 0
					_item_shard.sprite_index = spr_item_potion;
				else if carrying == 1
					_item_shard.sprite_index = spr_item_bomb;
				
				_n++;
			}
			
			carrying = -1;
			global.hp = global.hp_max;	
		}
	}
}
else if invinc == 1
{
	image_alpha = 1;
	
	if global.hp <= 0 {
		// hero dies
		if player_character == 0
		{
			image_alpha = 0;
			fade = instance_create_depth(x,y,-9999,obj_whitefade);
			respawn = true;
			fade.spd = .075;
		}
	}
	
	invinc = 0;
}

// respawn
if respawn {
	if fade != noone
		if fade.state == 1 {
			global.hp = global.hp_max;
			x = obj_caravan.x;
			y = obj_caravan.y;
			obj_camera.x = x - global.window_size[0]/2;
			obj_camera.y = y - global.window_size[1]/2;
			global.player_control = true;
			fade = noone;
			respawn = false;
			
			image_alpha = 1;
			image_xscale = 1;
			
			if carrying >= 0
				carrying = -1;
		}
}