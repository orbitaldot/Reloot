invinc = 0;
invinc_timer = 30;
hp = 1;
life = 0;

hitbox = noone;

function die() {
	instance_destroy(id);
	global.enemy_count--;
}

function hurt(dmg, src="") {
	if invinc == 0 {
		hp -= dmg;
		invinc = invinc_timer;
		
		audio_play_sound(sfx_damage, 0, 0, 1, 0, 1);
	}
}

create_spawner = true;
alarm[0] = 1;