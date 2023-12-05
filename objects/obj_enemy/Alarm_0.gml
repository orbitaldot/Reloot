if create_spawner 
{
	var _spawner = instance_create_depth(x, y, depth, obj_enemyspawn);
	_spawner.enemy_type = self.object_index;
	_spawner.spawn_life = life;
	_spawner.my_enemy = id;
}