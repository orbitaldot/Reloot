event_inherited();


if !invinc {
	y += 2;
}

if place_meeting(x, y, obj_winddown_teleport)
	y = 0;



if invinc == 0
	life++;
	
	
if sign(x - xprevious) != 0
	image_xscale = sign(x - xprevious);
	
if random(60) > 55
{
	var _cloud = instance_create_depth(x,y,depth+1,obj_anim_cloud);
	_cloud.vspeed = -1;
	_cloud.dxscale = .02;
	_cloud.dyscale = .02;
}