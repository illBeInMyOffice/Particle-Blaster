//flip particles

part_emitter_region(flip_s, flip_e, objPlayer.x - 5, objPlayer.x + 5, objPlayer.y - 5, objPlayer.y + 5, ps_shape_diamond, ps_distr_gaussian)

if flip == 1 and state == 0
{
	image_index = 0
	flip = 0
	
}

if flip == 1 and state == 1
{
	image_index = 1
	flip = 0
	
}


if flip == 1 and state == 2
{
	image_index = 2
	flip = 0
	
}

if flip == 1 and state == 3
{
	image_index = 3
	flip = 0
	
}



x = clamp(x, 20, room_width - 20)
y = clamp(y, 20, room_height - 20)

part_type_life(exhaust_p, 5, exhaustMax)
part_type_color_mix(exhaust_p, exhaustColor1, exhaustColor2)
part_type_size(exhaust_p, exhaustSize1, exhaustSize2, 0, 0)
playerSpeed = clamp(playerSpeed, 4.5, 8)
playerSpeed = lerp(playerSpeed, 4.5, .02)


var LAYid
LAYid = layer_get_id("Background")
var Ylayer
Ylayer = layer_get_y(LAYid)

if Boost == 1
{
	if playerSpeed <= 4.5
	{
		exhaustColor1 = c_red
		exhaustColor2 = c_yellow
		exhaustSize1 = 1
		exhaustSize2 = 2
		Boost = 0
		audio_play_sound(boostReady, 1, false)
	}
}




if keyboard_check(ord("W"))
{
	y -= playerSpeed
	exhaustMax = 20

}

if keyboard_check(ord("S"))
{
	y += playerSpeed
	exhaustMax = 20

}


if keyboard_check(ord("A"))
{
	x -= playerSpeed
	exhaustMax = 20
}

if keyboard_check(ord("D"))
{
	x += playerSpeed
	exhaustMax = 20
}




//-----------------------------------------------------------------
//exhaust particles

part_emitter_region(exhaust_s, exhaust_e, objPlayer.x - 5, objPlayer.x - 5, objPlayer.y, objPlayer.y, ps_shape_diamond, ps_distr_gaussian)
part_emitter_stream(exhaust_s, exhaust_e, exhaust_p, 20)






backgroundSpeed = clamp(backgroundSpeed, -50, 0)
backgroundSpeed = backgroundSpeed - .025
layer_hspeed("Background", backgroundSpeed)


show_debug_message(string(playerSpeed))