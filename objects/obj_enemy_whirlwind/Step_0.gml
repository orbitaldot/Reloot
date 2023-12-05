event_inherited();


if !invinc {
	x += dsin(life*2)*1.5;
}



if invinc == 0
	life++;
	
	
if sign(x - xprevious) != 0
	image_xscale = sign(x - xprevious);
	
if invinc == 0 and scr_onscreen(id) and random(60) > 55
{
	var _cloud = instance_create_depth(x,y,depth+1,obj_anim_cloud);
	_cloud.vspeed = -.5;
	_cloud.hspeed = -(sign(x - xprevious))/2;
	_cloud.dxscale = .02;
	_cloud.dyscale = .02;
}