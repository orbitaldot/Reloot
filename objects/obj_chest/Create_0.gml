invinc = 0;
invinc_timer = 15;
hp = 1;

hitbox = noone;

item_within = choose(1,1,0,0);
restocked = false;
open = false;

function hurt(dmg) {
	if invinc == 0 {
		if !open {
			hp -= 1;
			invinc = invinc_timer;
		
			sprite_index = spr_chest_open;
		
			var _item = instance_create_depth(x, y, depth+1, obj_item);
			_item.item_type = item_within;
			
			global.chests_opened++;
			ds_list_add(global.item_list, item_within);
			
			open = true;
			audio_play_sound(sfx_damage, 0, 0, 1, 0, 1.25);
		}
	}
}

// chests can't die
function die()
{
	
}

vel_y = 0;