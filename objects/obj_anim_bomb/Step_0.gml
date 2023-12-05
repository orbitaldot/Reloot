life -= .05;

image_alpha = floor(life*4)/4;

if image_alpha < 0
	instance_destroy(id);