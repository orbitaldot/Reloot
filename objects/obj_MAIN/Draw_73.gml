draw_set_color(c_black);
draw_rectangle(obj_camera.x, obj_camera.y, obj_camera.x + global.window_size[0], obj_camera.y + 16, 0);

draw_set_halign(fa_right);
draw_set_color(c_white);
draw_set_font(font_text);

var _info_string = "";

if !instance_exists(obj_player)
	exit

if obj_player.player_character == 0 
{	
	if obj_player.x >= room_width - 16 and global.enemy_count >= 1 {
		_info_string = "Slay all monsters first!";	
		obj_player.x = room_width - 16
	} else 
	{
		if global.enemy_count > 1
			_info_string = string(global.enemy_count) + " monsters left!";
		else if global.enemy_count == 1
			_info_string = string(global.enemy_count) + " monster left!!";
		
		else 
		{
			_info_string = "EXIT -> ";
			if global.tick mod 60 > 30
				_info_string = "EXIT  ->";
		}
	}
}
else if obj_player.player_character == 1
{
	if obj_player.x >= room_width - 16 {
		_info_string = "This exit is not for you!";	
		obj_player.x = room_width - 16
	} 
	else if (global.chests_opened == 0)
	{	
			_info_string = "<-  CARAVAN";
			if global.tick mod 60 > 30
				_info_string = " <- CARAVAN";	
	}
	else if global.chests_opened > 1
	{
		_info_string = string(global.chests_opened) + " chests to restock!";
	} else {
		_info_string = string(global.chests_opened) + " chest to restock!";
	}	
}
else if obj_player.player_character == 2
{
	if global.tick mod 60 > 30
		_info_string = "STAGE CLEAR!";
}else if obj_player.player_character == 3
{
	if global.tick mod 60 > 30
		_info_string = "CHESTS RESTOCKED!";
}else if obj_player.player_character == 4
{
	if global.tick mod 60 > 30
		_info_string = "CHESTS... ALREADY STOCKED!";
}


draw_text(obj_camera.x + global.window_size[0] - 4, obj_camera.y + 4, _info_string);
draw_set_halign(fa_left);

for(var i = 0; i < global.hp_max; i++) {
	draw_sprite(spr_heart, i >= global.hp, 8 + obj_camera.x + i*16, obj_camera.y);
}

draw_set_valign(fa_bottom);

var _cx = obj_camera.x;
var _cy = obj_camera.y;
var _ww = global.window_size[0];	// woodrow wilson? willy wonka? ... window width?
var _wh = global.window_size[1];

var _bomb_x = _cx + 12 + 64;
var _potion_x = _cx + 12;

var _bomb_y = _cy + 32;
var _potion_y = _bomb_y;

if global.bombs > 0 
{
	var _scale = new_item_tick_bombs > 0 ? 1.5 : 1
	draw_sprite_ext(spr_item_bomb, 0, _bomb_x, _bomb_y, _scale, _scale, 0, c_white, 1);
	
	draw_set_color(c_black);
	draw_text(_bomb_x + 8 + 1, _bomb_y, "C " + string(global.bombs));
	draw_text(_bomb_x + 8 - 1, _bomb_y, "C " + string(global.bombs));
	draw_text(_bomb_x + 8, _bomb_y + 1, "C " + string(global.bombs));
	draw_text(_bomb_x + 8, _bomb_y - 1, "C " + string(global.bombs));
	
	draw_set_color(c_white);
	draw_text(_bomb_x + 8, _bomb_y, "C " + string(global.bombs));
}
	
if global.potions > 0 
{
	var _scale = new_item_tick_potions > 0 ? 1.5 : 1
	draw_sprite_ext(spr_item_potion, 0, _potion_x, _potion_y, _scale, _scale, 0, c_white, 1);
	draw_set_color(c_black);
	draw_text(_potion_x + 8 + 1, _potion_y, "X " + string(global.potions));
	draw_text(_potion_x + 8 - 1, _potion_y, "X " + string(global.potions));
	draw_text(_potion_x + 8, _potion_y + 1, "X " + string(global.potions));
	draw_text(_potion_x + 8, _potion_y - 1, "X " + string(global.potions));
	
	draw_set_color(c_white);
	draw_text(_potion_x + 8, _potion_y, "X " + string(global.potions));
	
}
	
draw_set_valign(fa_top);

if old_bombs < global.bombs
	new_item_tick_bombs = 15;
	
new_item_tick_bombs -= new_item_tick_bombs > 0;
	
if old_potions < global.potions
	new_item_tick_potions = 15;

new_item_tick_potions -= new_item_tick_potions > 0;

old_bombs = global.bombs;
old_potions = global.potions;

