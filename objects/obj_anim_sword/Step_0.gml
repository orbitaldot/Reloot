dk = ((life-mlife)/mlife);

image_alpha = 1 - floor(dk*4)/4;

if life > mlife
	instance_destroy(id)
	
life++;

x = obj_player.x + min(0, life-mlife/2);
y = obj_player.y;

image_xscale = obj_player.image_xscale;
