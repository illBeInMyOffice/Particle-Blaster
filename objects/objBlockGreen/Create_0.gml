image_speed = 0
image_index = 1
spin = irandom_range(1, 8)
direction = 180
Switch = 1

shine_s = part_system_create()
shine_p = part_type_create()
part_type_shape(shine_p, pt_shape_line)
part_type_color_mix(shine_p, c_white, c_green)
part_type_direction(shine_p, 0, 359, 0, 0)
part_type_life(shine_p, 5, 15)
part_type_alpha3(shine_p, 1, .5, 0)
part_type_size(shine_p, .25, .25, 0, 0)
part_type_orientation(shine_p, 0, 0, 0, 0, true)
part_type_speed(shine_p, 2, 8, -.05, 0)
shine_e = part_emitter_create(shine_s)
