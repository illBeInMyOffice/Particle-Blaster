
objPlayer.state = irandom_range(0, maxState)
if objPlayer.state = 0
{
	objPlayer.flipColor = c_blue
}

if objPlayer.state = 1
{
	objPlayer.flipColor = c_red
}

if objPlayer.state = 2
{
	objPlayer.flipColor = c_yellow
}

if objPlayer.state = 3
{
	objPlayer.flipColor = c_yellow
}


objPlayer.flip = 1

part_type_color_mix(objPlayer.flip_p, c_white, objPlayer.flipColor)
part_emitter_burst(objPlayer.flip_s, objPlayer.flip_e, objPlayer.flip_p, 30)
audio_play_sound(transform, 1, false)


gridx = 0
gridy = 0
X = 0
Y = 0
ds_grid_clear(doesBlockExist, 0)

for (var i = 0; i <= 63; i +=1)
{
	ds_grid_add(grid, gridx, gridy, irandom_range(0, levelBlocks))
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





for (var i = 0; i <= numOfBlocks; i += 1)
{
	
	var chooseX = irandom_range(0, 7)
	var chooseY = irandom_range(0, 7)
	var blockX = ds_grid_get(coordGridX, chooseX, chooseY)
	var blockY = ds_grid_get(coordGridY, chooseX, chooseY)
	if !ds_grid_get(doesBlockExist, chooseX, chooseY) == 1
	{
	
		
	
		var blockType = ds_grid_get(grid, chooseX, chooseY)
		//show_debug_message("X: " + string(blockX) + "Y: " + string(blockY))
		if blockType = 0
		{
		
		
			instance_create_depth(blockX + room_width, blockY + 48, 0, objBlockBlue)
			blockCount += 1
		}
	
		if blockType = 1
		{
			instance_create_depth(blockX + room_width, blockY + 48, 0, objBlockRed)
			blockCount += 1
		}
		if blockType = 2
		{
			instance_create_depth(blockX + room_width, blockY + 48, 0, objBadEnemy)
			blockCount += 1
		}
		if blockType = 3
		{
			instance_create_depth(blockX + room_width, blockY + 48, 0, objBlockYellow)
			blockCount += 1
		}
		if blockType = 4
		{
			instance_create_depth(blockX + room_width, blockY + 48, 0, objBlockGreen)
			blockCount += 1
		}
	}
	ds_grid_add(doesBlockExist, chooseX, chooseY, 1)
}
	




blockIncrease += 1 
if blockIncrease >= 2
{
	blockSpeed += 1
	numOfBlocks += 1
	blockIncrease = 0
}
ds_grid_clear(grid, 0)

level += 1

if level = 5
{
	levelBlocks += 1
	instance_create_depth(irandom_range(room_width div 2, room_width - 250), - 50, 0, obj10kPoints)
}

if level = 10
{
	maxState += 1
	levelBlocks += 1
	instance_create_depth(irandom_range(room_width div 2, room_width - 250), - 50, 0, obj10kPoints)
}

if level = 15
{
	maxState += 1
	levelBlocks += 1
	instance_create_depth(irandom_range(room_width div 2, room_width - 250), - 50, 0, obj10kPoints)
}

if level = 25
{
	instance_create_depth(irandom_range(room_width div 2, room_width - 250), - 50, 0, obj10kPoints)
	instance_create_depth(irandom_range(room_width div 2, room_width - 250), - 50, 0, obj10kPoints)
	levelBlocks += 1
}
