if keyboard_check_pressed(vk_tab) 
{
	screen_save(string(current_time) + ".png");
	show_debug_message("Saved!");
}