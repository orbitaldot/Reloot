with(instance_place(x, y, obj_player)) 
{
	vel_y = -10;
	if !audio_is_playing(sfx_jump)
		audio_play_sound(sfx_jump, 0, 0, 1, 0, .5);
	audio_play_sound(sfx_wind_woosh, 0, 0, 1, 0, 1.2);
	
	repeat(irandom_range(5,10))
	{
		var _effect = instance_create_depth(
			random_range(bbox_left, bbox_right), bbox_bottom,
			depth + 1,
			obj_anim_cloud
		);
	
		_effect.vspeed = -random_range(2.5, 3);
		_effect.image_xscale = 2;
		_effect.image_yscale = 2;
		_effect.dxscale = 0.04;
		_effect.dyscale = 0.04;	
		
		var _effect = instance_create_depth(
			random_range(bbox_left, bbox_right), bbox_top - 8,
			depth + 1,
			obj_anim_cloud
		);
	
		_effect.vspeed = -random_range(2.5, 3);
		_effect.image_xscale = 2;
		_effect.image_yscale = 2;
		_effect.dxscale = 0.04;
		_effect.dyscale = 0.04;	
	}
}

if(random(1) > .75)
{
	var _effect = instance_create_depth(
		random_range(bbox_left, bbox_right), bbox_bottom,
		depth + 1,
		obj_anim_cloud
	);
	
	_effect.vspeed = -random_range(2, 2.25);
	_effect.dxscale = 0.04;
	_effect.dyscale = 0.04;
}