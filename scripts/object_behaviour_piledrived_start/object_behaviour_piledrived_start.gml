if (grabber_id != noone)
{
	var _dist = point_distance(x,y,grabber_id.x+(grabber_id.facing*64),grabber_id.y);
		
	if (_dist < lift_speed)
	{
		x = grabber_id.x+(grabber_id.facing*64);
		y = grabber_id.y;
		in_air = true;
		my_state = objectState.piledrived_during;
		grabber_id.my_state = objectState.piledriving_during;
		grabber_id.y_speed = piledrive_speed;
		grabber_id.x_speed = 0;
		grabber_id.in_air = true;
		grabber_id.grav = grabber_id.my_grav;
	}
		
	else
	{
		var _dir = point_direction(x,y,grabber_id.x+(grabber_id.facing*64),grabber_id.y);
		x += lengthdir_x(lift_speed,_dir);
		y += lengthdir_y(lift_speed,_dir);
	}
}