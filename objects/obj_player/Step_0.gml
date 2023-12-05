if invinc > 1
{
	image_alpha = (invinc mod 4)/4;
	invinc--;
	
	if global.hp <= 0 {
		global.player_control = false;
	}
}
else if invinc == 1
{
	image_alpha = 1;
	
	if global.hp <= 0 {
		image_alpha = 0;
		fade = instance_create_depth(x,y,-9999,obj_whitefade);
		respawn = true;
		fade.spd = .075;
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