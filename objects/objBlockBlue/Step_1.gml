/// @description Insert description here
// You can write your code in this editor

part_emitter_region(shine_s, shine_e, x - 15, x + 15, y - 15, y + 15, ps_shape_diamond, ps_distr_gaussian)

if objPlayer.dying = 0
{
	part_emitter_stream(shine_s, shine_e, shine_p, 2)
}
