image_speed = 0;

if place_meeting(x, y, obj_player) {
	if player_contact_timer == 0
		image_index = 1;
	image_speed = 1;
	player_contact_timer++;	
} else {
	player_contact_timer = 0;	
	flash = noone;
	wait_for_reentry = false;
	image_index = 0;
}

if open and player_contact_timer >= .75*60 and !wait_for_reentry {
	if flash == noone {
		flash = instance_create_depth(x,y,-9999,obj_whitefade);
		audio_play_sound(sfx_mario_warp, 0, 0);
	}
	
	if flash.state == 1 and destination != noone
	{
		audio_play_sound(sfx_mario_warp, 0, 0);
		
		obj_player.x = destination.x;
		obj_player.y = destination.y;
		
		obj_littledoor.wait_for_reentry = true;
	
		obj_camera.x = obj_player.x - global.window_size[0]/2;
		obj_camera.y = obj_player.y - global.window_size[1]/2;
	}
}

if open
	sprite_index = sprite_open;
