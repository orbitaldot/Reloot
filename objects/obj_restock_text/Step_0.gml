if keyboard_check_released(global.controls_action) or keyboard_check_released(global.controls_action2)
	instance_destroy(id);
	
x = obj_camera.x + global.window_size[0]/2;
y = obj_camera.y + 72;

image_alpha = 1;