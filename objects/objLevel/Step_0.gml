numOfBlocks = clamp(numOfBlocks, 2, 64)
blockCount = clamp(blockCount, 0, 64)

part_type_shape(explode_p, choose(pt_shape_pixel, pt_shape_star, pt_shape_square, pt_shape_spark))
part_type_orientation(explode_p, 0, 359, 10, 2, true)


score = score + 1


moveIntoSpace = clamp(moveIntoSpace, -2225, -500)
moveIntoSpace = moveIntoSpace + 1

layer_y(lay_id, moveIntoSpace)
	
	
