if sequence > -1 
{
	switch(sequence) {
		case 1:
			player_switch_sequence(timer);
			break;
		case 2:
			no_chests_sequence(timer);
			break;
		case 3:
			all_chests_restocked(timer);
			break;
	}
	
	timer++;	
	
}
else
{
	timer = 0;	
}

if !global.shown_help and !instance_exists(obj_whitefade) {
	global.player_control = false;
	instance_create_depth(x,y,-999,obj_help_text);
	global.shown_help = true;
}