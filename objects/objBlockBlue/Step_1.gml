/// @description Insert description here
// You can write your code in this editor



if objPlayer.dying = 0
{
	part_emitter_region(shine_s, shine_e, x - 40, x + 40, y - 40, y + 40, ps_shape_ellipse, ps_distr_gaussian)
	part_emitter_stream(shine_s, shine_e, shine_p, 3)
}
