camera_set_view_size(view_camera[0], global.window_size[0], global.window_size[1]);
view_enabled = true;
view_visible[0] = true;

target = noone;
if instance_exists(obj_player)
	target = obj_player
	
cam_offset_x = 0;
cam_offset_y = 0;

target_follow_window_width = 40;
target_follow_window_height = 60;

catchup_x = false;
catchup_y = false;

idle_time = 0;

xspeed = 2;