var _hurtbox = instance_create_depth(x,y,depth,obj_damage_hitbox);
_hurtbox.image_xscale = 4;
_hurtbox.image_yscale = 4;
_hurtbox.damage_source = "bomb";

life = 1;