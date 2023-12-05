image_xscale = max(0, image_xscale - dxscale);
image_yscale = max(0, image_yscale - dyscale);

if image_xscale <= 0 and image_yscale <= 0
	instance_destroy(id);
	
image_angle += 10;