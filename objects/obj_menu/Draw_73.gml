draw_set_font(font_text);
draw_set_halign(fa_center);
draw_set_colour(c_yellow);

var t = 60;

var m = min(life - t, 0);

draw_sprite(spr_title_cat, 0, -m, 0)
draw_sprite(spr_title_knight, 0, m, 0)

gpu_set_fog(1, c_black, 0, 0);
draw_set_alpha(round(8*(1 - (life - t)/60))/8);
draw_sprite(spr_title_cat, 0, -m, 0)
draw_sprite(spr_title_knight, 0, m, 0)
draw_set_alpha(1);
gpu_set_fog(0, c_black, 0, 0);

if !instance_exists(obj_whitefade)
{
	if keyboard_check_pressed(global.controls_action) or keyboard_check_pressed(global.controls_action2)
	{
		var _fade = instance_create_depth(x,y,-9999,obj_whitefade);
		_fade.image_blend = c_black;
		_fade.newroom = room_level;
		global.player_control = false;
	}
	
	if global.shown_help
		global.player_control = true;
	
	global.enemy_count = 0;
	global.chests_opened = 0;
	
	draw_set_color(c_black);
	
	var _y = 190;
	
	if global.tick mod 60 <= 30 {
		draw_text(global.window_size[0]/2 - 1, _y, "Press [Z] or [Y] to start.");
		draw_text(global.window_size[0]/2 + 1, _y, "Press [Z] or [Y] to start.");
		draw_text(global.window_size[0]/2, _y - 1, "Press [Z] or [Y] to start.");
		draw_text(global.window_size[0]/2, _y + 1, "Press [Z] or [Y] to start.");
		
		draw_set_color(c_yellow);
		draw_text(global.window_size[0]/2, _y, "Press [Z] or [Y] to start.");
		
	}
	
	draw_set_color(c_white);
}

draw_set_color(c_white);
draw_text(126, 4, "A game by orbitaldot\nfor Ludum Dare 53");

draw_set_halign(fa_left);
draw_set_colour(c_white);

life++;