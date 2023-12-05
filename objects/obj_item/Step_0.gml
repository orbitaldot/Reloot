if flash > 1
{
	image_alpha = (flash mod 4)/4;
	flash--;
}
else if flash == 1
{
	image_alpha = 1;
	flash = 0;	
}

vspeed = lerp(vspeed, 0, .1);

sprite_index = item_sprites[item_type];

if place_meeting(x, y, obj_player) {
	if item_type == 0
		global.potions++;
	else if item_type == 1
		global.bombs++;
	instance_destroy(id);
}