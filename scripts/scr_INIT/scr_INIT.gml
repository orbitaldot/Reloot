function scr_INIT() {
	
	// Initialize window stuff
	global.window_size = [room_width, room_height];
	global.window_scale = 3;
	
	window_set_size(
		global.window_size[0]*global.window_scale,
		global.window_size[1]*global.window_scale
	);
	
	global.player_control = true;
	
	global.enemy_count = 0;
	global.chests_opened = 0;
	
	global.item_list = ds_list_create();
	
	global.hp = 3;
	global.hp_max = 3;
	
	global.draw_hp = true;
	
	global.potions = 0;
	global.bombs = 0;
	
	global.tick = 0;
	
	global.controls_action = ord("Z");
	global.controls_action2 = ord("Y");
	global.controls_use_potion = ord("X");
	global.controls_use_bomb = ord("C");
	
	global.shown_help = false;
	
	global.beat = false;
	
	global.text = scr_text_init();
	
	display_set_gui_size(global.window_size[0], global.window_size[1])
	
	var _start_room = room_menu;
	
	room_goto(_start_room);
}