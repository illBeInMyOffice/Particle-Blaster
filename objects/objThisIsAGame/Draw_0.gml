draw_set_alpha(bg_alpha)

if shutter == 0
{
	draw_sprite(thisIsAGameSplash, 0, 0, 0)
}

else
{
	draw_sprite(heatleyBros, 0, room_width div 2, room_height div 2)
}





if !audio_is_playing(thisisagame)
{
	if shutter == 0
	{
		bg_alpha = bg_alpha -.025
		if bg_alpha <= 0
		{
			shutter = 1
		}
	}
	if shutter == 1
	{
		bg_alpha = bg_alpha + .025
		if bg_alpha >= 1
		{
			shutter = 2
		}
	}
	if shutter == 2
	{
		alarm[0] = 160
		shutter = 3
	}
}



