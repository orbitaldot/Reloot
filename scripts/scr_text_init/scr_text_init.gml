function scr_text_init()
{
	var _T = ds_map_create();
	var _d = ds_map_add
	
	_d(_T, "menu_play", "Press [Z] or [Y] to start.");
	_d(_T, "menu_tag", "A game by orbitaldot\nfor Ludum Dare 53");
	
	_d(_T, "hud_slay_first", "Slay all monsters first!");
	
	_d(_T, "hud_exit_0", "EXIT -> ");
	_d(_T, "hud_exit_1", "EXIT  ->");
	
	_d(_T, "hud_exit_not_for_you", "This exit is not for you!");
	
	_d(_T, "hud_caravan_0", "<-  CARAVAN");
	_d(_T, "hud_caravan_1", " <- CARAVAN");
	
	_d(_T, "hud_stage_clear", "STAGE CLEAR!");
	_d(_T, "hud_chests_restocked", "CHESTS RESTOCKED!");
	_d(_T, "hud_chests_already_stocked", "CHESTS... ALREADY STOCKED!");
	
	_d(_T, "hud_monsters_left", "{0} monster{1} left!"); 
	_d(_T, "hud_chests_to_restock", "{0} chest{1} to restock!");
	
	return _T;
}