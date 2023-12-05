function scr_draw_indicator(ox, oy, col){
	var _ox = ox;
	var _oy = oy;
	
	var _x = clamp(ox, obj_camera.x + 8, obj_camera.x + global.window_size[0] - 8);
	var _y = clamp(oy, obj_camera.y + 24, obj_camera.y + global.window_size[1] - 8);
	
	if _x == _ox and _y == _oy
		exit
		
	draw_sprite_ext(spr_enemy_indicator, 0, _x, _y, 1, 1, 0, col, 1);
}