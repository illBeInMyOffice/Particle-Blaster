if objPlayer.dying != 1
{
	score += 10000
	audio_play_sound(tenKpickup, 1, false)
	instance_destroy()
}