if random(100) > 80
{
	var _x = random_range(bbox_left, bbox_right);
	var _y = random_range(bbox_bottom, bbox_top);
	
	var _cloud = instance_create_depth(_x, _y, -999, obj_anim_cloud);
	
	_cloud.dxscale = .04;
	_cloud.dxscale = .02;
	
	_cloud.hspeed = -2;
}

if place_meeting(x, y, obj_player)
	obj_player._dx = -1;