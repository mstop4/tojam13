switch (my_state) 
{
	case objectState.idle:
	case objectState.grabbing_start:
	case objectState.grabbing_during:
	
	if (in_air)
	{
		if (place_meeting(x,y+1,obj_wall))
		{
			grav = 0;
			y_speed = 0;
			in_air = false;
		
			y = y div 32 * 32;
		
		}
	
		else
		{
			y_speed += grav;
			y += y_speed;
		}
	}

	else
	{
		if (!place_meeting(x,y+1,obj_wall))
		{
			grav = my_grav;
			in_air = true;
		}
	}
	break;
	
	case objectState.grabbed_start:
	
	if (grabber_id != noone)
	{
		var _dist = point_distance(x,y,grabber_id.x,grabber_id.y-32);
		
		if (_dist < lift_speed)
		{
			x = grabber_id.x;
			y = grabber_id.y-32;
			my_state = objectState.grabbed_during;
		}
		
		else
		{
			var _dir = point_direction(x,y,grabber_id.x,grabber_id.y-32);
			x += lengthdir_x(lift_speed,_dir);
			y += lengthdir_y(lift_speed,_dir);
		}
	}
	break;
	
	case objectState.grabbed_during:
	
	x = grabber_id.x;
	y = grabber_id.y-32;
	break;
}