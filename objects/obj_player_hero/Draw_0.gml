draw_sprite_ext(sprite_index, image_index, x+draw_off_x, y+draw_off_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

if carrying == 0
	draw_sprite(spr_item_potion, 0, x + image_xscale*8, y - 4);
	
if carrying == 1
	draw_sprite(spr_item_bomb, 0, x + image_xscale*8, y - 4);