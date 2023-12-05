/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

function hurt(dmg, src="") {
	if invinc == 0 and src == "bomb" {
		hp -= dmg;
		invinc = invinc_timer;
		
		audio_play_sound(sfx_damage, 0, 0, 1, 0, 1);
		
		instance_destroy(coll_box);
	}
}

function die() {
	instance_destroy(id);	
}

coll_box = instance_create_depth(x-16, y-48, depth, obj_coll);
coll_box.image_yscale = 3;
