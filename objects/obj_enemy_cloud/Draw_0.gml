draw_sprite_ext(sprite_index, image_index, x, draw_y, 1, 1, 0, c_white, image_alpha);

if obj_player.player_character == 0
	scr_draw_indicator(x, y, c_fuchsia);

if flash > 0 {
	side = (life mod 10) > 5
	
	draw_sprite_ext(spr_lightning, 0, x, draw_y, -1 * side + !side * 1  , 1, 0, c_white, (1.5 * flash)/20);	
}