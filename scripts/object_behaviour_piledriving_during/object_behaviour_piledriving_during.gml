if (place_meeting(x,y+y_speed,obj_wall))
{
	while (true)
	{
		if (!place_meeting(x,y+sign(y_speed)*0.1,obj_wall))
			y += sign(y_speed)*0.1;
		else
			break;
	}
				
	x_speed = -facing*2;
	y_speed = -2;
	my_state = objectState.idle;
	grabbed_id.my_state = objectState.idle;
	grabbed_id.x_speed = 3*facing;
	grabbed_id.y_speed = -3;
	grabbed_id.in_air = true;
	grabbed_id.grav = grabbed_id.my_grav;
	grabbed_id.grabber_id = noone;
	grabbed_id = noone;
}
	
else
{
	y_speed += grav*4;
	y += y_speed;
}