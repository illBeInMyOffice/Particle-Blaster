state = 0
flip = 0
image_speed = 0
exhaustMax = 8
exhaustColor1 = c_yellow
exhaustColor2 = c_red
exhaustSize1 = 1
exhaustSize2 = 2
Boost = 0

beamsOnScreen = 0
flipColor = 0
playerSpeed = 4.5


exhaust_s = part_system_create()
exhaust_p = part_type_create()
part_type_shape(exhaust_p, pt_shape_pixel)

part_type_direction(exhaust_p, 170, 190, 0, 0)
part_type_speed(exhaust_p, 5, 10, 2, .5)
part_type_alpha3(exhaust_p, 1, .5, 0)
exhaust_e = part_emitter_create(exhaust_s)
backgroundSpeed = 0


flip_s = part_system_create()
flip_p = part_type_create()
part_type_shape(flip_p, pt_shape_explosion)
part_type_direction(flip_p, 0, 359, 0, 0)
part_type_speed(flip_p, 10, 13, 0, 0)
part_type_life(flip_p, 10, 15)
part_type_alpha3(flip_p, 1, .5, 0)
flip_e = part_emitter_create(flip_s)