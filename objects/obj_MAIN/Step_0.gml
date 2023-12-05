if keyboard_check_pressed(vk_escape)
	game_restart();
	
global.tick++;

if room_speed < 60 and freeze == 1
{
	room_speed = 60;
	freeze = 0;	
}
if room_speed < 60 and freeze == 0
	freeze = 1
	
if global.player_control
{
	// use potion
	if keyboard_check_pressed(global.controls_use_potion)
	{
		if global.potions > 0 and global.hp < global.hp_max
		{
			global.hp++;
			global.potions--;
		}	
	}

	// throw bomb
	if keyboard_check_pressed(global.controls_use_bomb)
		if global.bombs > 0
		{
			with(obj_player)
			{
				var _bomb = instance_create_depth(x, y, depth-1, obj_bomb_thrown);
				_bomb.x_vel = image_xscale * 3.5;
				_bomb.y_vel = -5;
			}
			global.bombs--;
		}
}

if !instance_exists(obj_player)
	exit
	
if obj_player.player_character == 0 and global.enemy_count <= 0 and obj_player.x > room_width + 8
	if obj_sequence_control.sequence == -1
		obj_sequence_control.sequence = 1
