event_inherited();

_dx = 0;

if global.player_control
	_dx += move_speed_x * (keyboard_check(vk_right) - keyboard_check(vk_left));

if !place_meeting(x + _dx, y, obj_coll)
	x += _dx;
	
var _floor = instance_place(x, y + vel_y, obj_coll);

var _onground = 0;

if _floor != noone  {
	if _floor.y >= y
	{
		y = _floor.bbox_top;	
		
		if vel_y == gravity_force
			audio_play_sound(sfx_land, 0, 0);
	}
	vel_y = 0;
	
	if abs(_floor.y - y) < .5 {
		_onground = 1
		jump_time = 0;
	}
} else {
	y += vel_y;	
	jump_time++;
}

if vel_y < gravity_force
{
	vel_y = min(vel_y + acc_y , gravity_force);
}

// jump
if keyboard_check(vk_up) and _onground and global.player_control
{
	audio_play_sound(sfx_jump, 0, 0);
	vel_y = -3;	
}

if keyboard_check(vk_up) and global.player_control and !place_meeting(x, y-8, obj_coll) {	
	if jump_time < 18
		vel_y = -3;
}

if sign(x - xprevious) != 0
	image_xscale = sign(x - xprevious);
	
// attack as knight
if player_character == 0 
{
	sprite_index = spr_player_hero;
	
	if keyboard_check_pressed(global.controls_action) or keyboard_check_pressed(global.controls_action2) {
		var _sword_anim = instance_create_depth(x,y,depth-1,obj_anim_sword)
		_sword_anim.image_xscale = image_xscale;
	
		c = scr_object_center_coords(_sword_anim)
	
		var _hitbox = instance_create_depth(c[0], c[1], -999, obj_damage_hitbox);
		_hitbox.image_xscale = 2;
		
		audio_play_sound(sfx_swish, 0, 0);
	}
}

else if player_character == 1
{
	if carrying >= 0
	{
		sprite_index = spr_player_carrier_eyes;	
			
		move_speed_x = 2;
	} 
	else 
	{
		sprite_index = spr_player_carrier;		
		draw_off_x = 0;
		move_speed_x = 2;
	}
	
}

if xprevious != x and _onground {
	if image_speed = 0
		image_index = 1
	image_speed = 1
} else {
	image_speed = 0;
	image_index = 0;
}

if !_onground
	image_index = 1;

life++;

_dx = 0;