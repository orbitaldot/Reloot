if invinc > 1
{
	image_alpha = (invinc mod 4)/4;
	invinc--;
	
}
else if invinc == 1
{
	image_alpha = 1;
	invinc = 0;

}

vel_y += obj_player.acc_y/1.5;
var _floor = instance_position(x, y + vel_y, obj_coll);

if _floor != noone and _floor.bbox_top <= y
{
	y = _floor.bbox_top;
	vel_y = 0;	
} else {
	y += vel_y;	
}