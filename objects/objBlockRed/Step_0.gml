speed = objLevel.blockSpeed

if x <= -128
{
	instance_destroy()
	
}

if objPlayer.dying = 0
{
	part_emitter_region(shine_s, shine_e, x - 15, x + 15, y - 15, y + 15, ps_shape_diamond, ps_distr_gaussian)
	part_emitter_stream(shine_s, shine_e, shine_p, 3)
}


image_angle = image_angle + spin