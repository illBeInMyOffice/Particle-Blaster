speed = objLevel.blockSpeed

if x <= -128
{
	instance_destroy()
	
}

if objPlayer.dying = 0
{
	part_emitter_stream(shine_s, shine_e, shine_p, 2)
}


image_angle = image_angle + spin