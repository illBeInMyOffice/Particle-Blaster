
if objPlayer.dying != 1
{
script_execute(playerDied, 3)
}
/*
if objPlayer.state != 3
{
	objPlayer.dying = 1
	part_system_destroy(objPlayer.exhaust_s)
	with objBlockBlue
	{
		part_system_destroy(shine_s)
	}
	
	with objBlockRed
	{
		part_system_destroy(shine_s)
	}
	with objBlockYellow
	{
		part_system_destroy(shine_s)
	}
	
	with objBlockGreen
	{
		part_system_destroy(shine_s)
	}
	
	
	if score > objMusic.highscore
	{
		objMusic.highscore = score
	}
	
	score = 0
	if Switch = 1
	{
		with(objPlayer)
		{
			audio_play_sound(playerDies, 1, false)
			sprite_index = explosion
			image_speed = 1
		}
		Switch = 0
	}
}


else
{
	if objPlayer.dying != 1
	{
		for (var i = 1; i <= 1; i++)
		{
			score += 1000
			part_emitter_burst(objLevel.explode_s, shine_e, objLevel.explode_p, 100)
			instance_destroy()
		
		
		}
	}
}
