if (grabber_id != noone)
{
	var _dist = point_distance(x,y,grabber_id.x+hold_v_xoffset,grabber_id.y+hold_v_yoffset);
		
	if (_dist < lift_speed)
	{
		x = grabber_id.x+hold_v_xoffset;
		y = grabber_id.y+hold_v_yoffset;
		my_state = objectState.grabbed_during;
	}
		
	else
	{
		var _dir = point_direction(x,y,grabber_id.x+hold_v_xoffset,grabber_id.y+hold_v_yoffset);
		x += lengthdir_x(lift_speed,_dir);
		y += lengthdir_y(lift_speed,_dir);
	}
}