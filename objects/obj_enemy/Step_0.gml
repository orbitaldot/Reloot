if invinc > 1
{
	image_alpha = (invinc mod 4)/4;
	invinc--;
	
	if hitbox != noone
		hitbox.active = false;
}
else if invinc == 1
{
	image_alpha = 1;
	invinc = 0;
	
	if hitbox != noone
		hitbox.active = true;
	
	if hp <= 0
		die();
}