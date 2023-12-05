if keyboard_check_released(global.controls_action) or keyboard_check_released(global.controls_action2) 
{
	global.player_control = true;
	instance_destroy(id);
}
	
x = obj_camera.x + global.window_size[0]/2;
y = obj_camera.y + 164;

image_alpha = 1;