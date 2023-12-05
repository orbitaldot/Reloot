x += x_vel;

y += y_vel;

y_vel += obj_player.acc_y;

if life > 30 or place_meeting(x, y, obj_fakewall)
{
	var _anim = instance_create_depth(x, y, depth-1, obj_anim_bomb);
	_anim.image_xscale = 1.25;
	_anim.image_yscale = 1.25;
	audio_play_sound(sfx_lightning, 0, 0, 1, 0, .5);
	instance_destroy(id);
}
	
life++;