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
				
		if (!ignore_ground_check)
		{
			grav = 0;
			x_speed = 0;
			y_speed = 0;
			in_air = false;
		}
		
		else
			ignore_ground_check = false;
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