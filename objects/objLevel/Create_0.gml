randomize()
lay_id = layer_get_id("Background")
moveIntoSpace = -2225
maxState = 1
level = 1
levelBlocks = 1

grid = ds_grid_create(8, 8)
gridx = 0
gridy = 0
numOfBlocks = 2
blockIncrease = 0
blockSpeed = 13
blockCount = 0
timer = 150
score = 0

doesBlockExist = ds_grid_create(8, 8)
coordGridX = ds_grid_create(8, 8)
coordGridY = ds_grid_create(8, 8)
X = 0
Y = 0


for (var i = 0; i <= 63; i +=1)
{
	
	ds_grid_add(coordGridX, gridx, gridy, X * 128)
	ds_grid_add(coordGridY, gridx, gridy, Y * 96)
	X += 1
	gridx = gridx + 1
	if gridx >= 8
	{
		gridx = 0
		X = 0
		Y += 1
		gridy = gridy + 1
	}
}


alarm[0] = timer


explode_s = part_system_create()
explode_p = part_type_create()
part_type_color_mix(explode_p, c_yellow, c_red)
part_type_direction(explode_p, 0, 359, 0, 0)
part_type_speed(explode_p, 5, 10, -.1, 0)
part_type_gravity(explode_p, 2, 270)
part_type_life(explode_p, 30, 60)
part_type_alpha3(explode_p, 1, .5, 0)
