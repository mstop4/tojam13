switch (my_state) 
{
	case objectState.idle:
	case objectState.grabbing_start:
	case objectState.grabbing_during:
	
		if (place_meeting(x+x_speed,y,obj_wall))
		{
			while (true)
			{
				if (!place_meeting(x+sign(x_speed)*0.1,y,obj_wall))
					x += sign(x_speed)*0.1;
				else
					break;
			}
			
			x_speed *= -0.5;
		}
		
		else
			x += x_speed;
	
		if (in_air)
		{
			if (place_meeting(x,y+y_speed,obj_wall))
			{
				while (true)
				{
					if (!place_meeting(x,y+sign(y_speed)*0.1,obj_wall))
						y += sign(y_speed)*0.1;
					else
						break;
				}
				
				grav = 0;
				x_speed = 0;
				y_speed = 0;
				in_air = false;
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
	case objectState.slammed_start:
		x = grabber_id.x;
		y = grabber_id.y-32;
		break;
		
	case objectState.kicked_start:
	
		if (grabber_id != noone)
		{
			var _dist = point_distance(x,y,grabber_id.x+(grabber_id.facing*32),grabber_id.y);
		
			if (_dist < lift_speed)
			{
				x = grabber_id.x+(grabber_id.facing*32);
				y = grabber_id.y-1;
				my_state = objectState.idle;
				grabber_id.my_state = objectState.idle;
				x_speed = 6*grabber_id.facing;
				y_speed = -4;
				grabber_id.grabbed_id = noone;
				grabber_id = noone;
			}
		
			else
			{
				var _dir = point_direction(x,y,grabber_id.x+(grabber_id.facing*32),grabber_id.y);
				x += lengthdir_x(lift_speed,_dir);
				y += lengthdir_y(lift_speed,_dir);
			}
		}
		break;
}