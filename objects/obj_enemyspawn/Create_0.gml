enemy_type = noone;
spawn_life = 0;
my_enemy = noone;

function spawn_enemy()
{
	if !enemy_type != noone and !instance_exists(my_enemy)
	{
		var _en = instance_create_depth(x, y, depth, enemy_type);	
		_en.life = spawn_life;
		_en.create_spawner = false;
		my_enemy = _en;
	}
}