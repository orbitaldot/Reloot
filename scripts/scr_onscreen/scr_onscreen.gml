function scr_onscreen(obj){
	if obj == noone or !instance_exists(obj)
		return false;
	return 
	(
		obj.bbox_left < obj_camera.x + global.window_size[0] and
		obj.bbox_right > obj_camera.x and
		obj.bbox_top < obj_camera.y + global.window_size[1] and
		obj.bbox_bottom > obj_camera.y
	);
}