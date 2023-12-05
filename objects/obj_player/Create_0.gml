invinc = 0;

function hurt(damage) {
	if invinc == 0 {
		invinc = 60;
		global.hp -= damage;
	}
}

respawn = false;
fade = noone;