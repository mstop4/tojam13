if (grabber_id != noone)
{
	var _dist = point_distance(x,y,grabber_id.x+(grabber_id.facing*32),grabber_id.y);
		
	if (_dist < lift_speed)
	{
		x = grabber_id.x+(grabber_id.facing*32);
		y = grabber_id.y-1;
		my_state = objectState.piledrived_during;
		grabber_id.my_state = objectState.piledriving_during;
	}
		
	else
	{
		var _dir = point_direction(x,y,grabber_id.x+(grabber_id.facing*32),grabber_id.y);
		x += lengthdir_x(lift_speed,_dir);
		y += lengthdir_y(lift_speed,_dir);
	}
}