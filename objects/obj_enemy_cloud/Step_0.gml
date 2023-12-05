event_inherited();

var _n = 180;

if !invinc {
	if life mod _n >= _n/2 {
		x += .5;	
	} else {
		x -= .5;	
	}
}

draw_y = y + random((life mod (_n/2))/_n * 2)

if life mod (_n/2) == 0 and invinc == 0 {
	flash = 20;	
	var _hb = instance_create_depth(x, y + 24, depth, obj_damage_hitbox);
	_hb.image_xscale = 2;
	_hb.image_yscale = 3;
	_hb.hurts_enemies = false;
	_hb.hurts_player = true;
	
	if distance_to_object(obj_player) < 100 
	{
		if audio_is_playing(sfx_lightning)
			audio_stop_sound(sfx_lightning);
			
		audio_play_sound(sfx_lightning, 0, 0, 1, 0, .9);
		
	}
}

if flash > 0 {
	sprite_index = spr_enemy_cloud_flash
	flash -= 1;	
} else {
	sprite_index = spr_enemy_cloud;	 
}

if invinc == 0
	life++;