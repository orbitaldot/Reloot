draw_sprite_ext(
	sprite_index, image_index,
	x+draw_off_x, y+draw_off_y,
	image_xscale, image_yscale,
	image_angle, image_blend, player_character == 0 ? image_alpha : 1
);

if carrying == 0
	draw_sprite_ext(
		spr_item_potion, 0,
		x + image_xscale*8, y - 4,
		1, 1, 0, c_white, player_character == 1 ? image_alpha : 1);
	
if carrying == 1
	draw_sprite_ext(
		spr_item_bomb, 0,
		x + image_xscale*8, y - 4,
		1, 1, 0, c_white, player_character == 1 ? image_alpha : 1);
