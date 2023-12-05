draw_set_color(image_blend);
draw_set_alpha(round(image_alpha*4)/4);
if image_blend != c_black
	gpu_set_blendmode(bm_add);
draw_rectangle(0, 0, global.window_size[0], global.window_size[1], 0);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);

if state == 0 {
	image_alpha += spd;	
	if image_alpha >= 1
		state = 1;
} else if state == 1 {
	
	if image_alpha >= 1 and newroom != -1 {
		room_goto(newroom);	
	}
	image_alpha -= spd;
	
	if image_alpha <= 0
		instance_destroy(id);
}