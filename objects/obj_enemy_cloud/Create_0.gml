event_inherited();

flash = 0;

life = 0;


draw_y = y;

hitbox = instance_create_depth(x,y,depth,obj_damage_hitbox);
hitbox.hurts_enemies = false;
hitbox.hurts_player = true;
hitbox.delete_immediately = false;
hitbox.follow = self;
hitbox.follow_off_y = -8;
hitbox.image_xscale = 2;

global.enemy_count++;