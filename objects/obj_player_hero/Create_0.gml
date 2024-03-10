/*
	"obj_player" exists, and so does "obj_player_hero" (you are here!),
	the reason being that Molt would have been a separate child object
	of obj_player.
	
	But then it turned out to be easier to include all of Molt's logic
	with that of the Hero.
*/

event_inherited();

gravity_force = 4;

vel_y = 0;
acc_y = .3;
_dx = 0;
move_speed_x = 2;

// 0 = hero, 1 = item carrier
player_character = 0;
carrying = -1;

draw_off_x = 0;
draw_off_y = 0;
life = 0;

jump_time = 0;

invinc = 60;

on_ground = false;