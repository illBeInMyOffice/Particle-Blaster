if objPlayer.state != 2
{
	
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
	ds_grid_destroy(objLevel.grid)
	ds_grid_destroy(objLevel.coordGridX)
	ds_grid_destroy(objLevel.coordGridY)
	room_goto(game)
}


else
{
	for (var i = 0; i = 1; i++)
	{
		score += 1000
		part_emitter_burst(objLevel.explode_s, shine_e, objLevel.explode_p, 100)
		instance_destroy()
		
		
	}
}