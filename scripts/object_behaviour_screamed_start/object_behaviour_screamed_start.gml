if (grabber_id != noone)
{
	var _dist = point_distance(x,y,grabber_id.x+(grabber_id.facing*64),grabber_id.y);
		
	if (_dist < lift_speed)
	{
		x = grabber_id.x+(grabber_id.facing*64);
		y = grabber_id.y;
		in_air = true;
		my_state = objectState.screamed_during;
		grabber_id.my_state = objectState.screaming_during;
		grabber_id.alarm[2] = 60;
	}
		
	else
	{
		var _dir = point_direction(x,y,grabber_id.x+(grabber_id.facing*64),grabber_id.y);
		x += lengthdir_x(lift_speed,_dir);
		y += lengthdir_y(lift_speed,_dir);
	}
}