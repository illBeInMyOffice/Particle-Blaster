counter = counter - 1



if counter <= 0 and image_index != 3
{
	image_index = nextNumber
	nextNumber += 1
	audio_play_sound(beep, 1, false)
	counter = 60
}




if image_index == 3
{
	if counter = 60
	{
		audio_play_sound(boop, 1, false)
	}
	if counter <= 0
	{
		instance_create_depth(244, 544, 0, objPlayer)
		instance_create_depth(0, 0, 0, objLevel)
		instance_destroy()
	}
}

