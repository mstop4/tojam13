if (grabber_id != noone)
{
	var _dist = point_distance(x,y,grabber_id.x,grabber_id.y-64);
		
	if (_dist < lift_speed)
	{
		x = grabber_id.x;
		y = grabber_id.y-64;
		my_state = objectState.grabbed_during;
	}
		
	else
	{
		var _dir = point_direction(x,y,grabber_id.x,grabber_id.y-64);
		x += lengthdir_x(lift_speed,_dir);
		y += lengthdir_y(lift_speed,_dir);
	}
}