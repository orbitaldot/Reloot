function scr_simple_key_movement(spd,l=vk_left,u=vk_up,r=vk_right,d=vk_down) {
	x += spd * (keyboard_check(r) - keyboard_check(l));
	y += spd * (keyboard_check(d) - keyboard_check(u));
}