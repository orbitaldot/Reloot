if target != noone {
	var _d = 16;
	var _targ_y = target.y - _d;
	
	var _cx = x + global.window_size[0]/2 + cam_offset_x
	var _cy = y + global.window_size[1]/2 + cam_offset_y
	
	diff_x = floor(target.x) - _cx;
	
	if abs(diff_x) > target_follow_window_width
		catchup_x = true;
	
	var _y_diff = _targ_y - _cy
	
	if (_y_diff > 32) or (_y_diff < -72) or (_y_diff < -32 and instance_exists(target) and target.on_ground)
		catchup_y = true;
		
	if catchup_x {
		x += sign(target.x - _cx) * xspeed;
		
		
		if abs(target.x - _cx) <= 4
			x = target.x - global.window_size[0]/2 + cam_offset_x;
		
		if abs(target.x - _cx) == 0 {
			catchup_x = false;
		}
	}
	
	if catchup_y {
		y += sign(_targ_y - _cy) * max(abs(_targ_y - (target.yprevious - _d)), 4) ;
		
		if abs(_targ_y - _cy) <= 2
			y = _targ_y - global.window_size[1]/2 + cam_offset_y;
		
		if abs(_targ_y - _cy) == 0 {
			catchup_y = false;
		}
	}
	
	x = clamp(x, 0, room_width - global.window_size[0]);
	y = clamp(y, 0, room_height - global.window_size[1]);
	
}

camera_set_view_pos(view_camera[0], floor(x), floor(y));