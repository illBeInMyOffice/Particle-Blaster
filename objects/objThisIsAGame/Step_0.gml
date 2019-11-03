





/*if !audio_is_playing(thisisagame)
{
	var lay_id = layer_get_id("Background")
	var back_id = layer_background_get_id(lay_id)
	layer_background_alpha(back_id, bg_alpha)



	if shutter == 0
	{
		bg_alpha = bg_alpha - .025
		if bg_alpha <= 0
		{
			var lay_id = layer_get_id("Background")
			var back_id = layer_background_get_id(lay_id)
			layer_background_change(back_id, heatleyBros)
			shutter = 1
		}
		
	
	}
}

show_debug_message(string(bg_alpha))
