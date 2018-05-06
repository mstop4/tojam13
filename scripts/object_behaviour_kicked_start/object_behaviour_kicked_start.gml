if (grabber_id != noone)
{
	var _dist = point_distance(x,y,grabber_id.x+grabber_id.sprite_width/2-sprite_width/2+(grabber_id.facing*hold_h_xoffset),grabber_id.y+hold_h_yoffset);
		
	if (_dist < lift_speed)
	{
		x = grabber_id.x+grabber_id.sprite_width/2-sprite_width/2+(grabber_id.facing*hold_h_xoffset);
		y = grabber_id.y+hold_h_yoffset-1;
		my_state = objectState.idle;
		grabber_id.my_state = objectState.kicking_during;
		grabber_id.alarm[1] = 30;
		x_speed = kick_speed_x*grabber_id.facing;
		y_speed = kick_speed_y;
		grabber_id.grabbed_id = noone;
		grabber_id = noone;
		audio_play_sound(snd_hit,50,false);
	}
		
	else
	{
		var _dir = point_direction(x,y,grabber_id.x+grabber_id.sprite_width/2-sprite_width/2+(grabber_id.facing*hold_h_xoffset),grabber_id.y+hold_h_yoffset);
		x += lengthdir_x(lift_speed,_dir);
		y += lengthdir_y(lift_speed,_dir);
	}
}