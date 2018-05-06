with (obj_object)
{
	my_state = objectState.idle;
	in_air = true;
	grav = my_grav;
	image_x_offset = 0;
	image_y_offset = 0;
	v_facing = 1;
}

with (p1)
	event_user(0);
	
with (p2)
	event_user(0);
	
my_state = rpsState.preparing;
audio_play_sound(mus_normal_loop,100,true);
audio_stop_sound(mus_win_loop);
alarm[4] = 30;