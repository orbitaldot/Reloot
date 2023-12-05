draw_self();

if life < mlife/4
{
	gpu_set_fog(1, c_white, 0, 0);
	draw_self();
	gpu_set_fog(0, c_white, 0, 0);
}
