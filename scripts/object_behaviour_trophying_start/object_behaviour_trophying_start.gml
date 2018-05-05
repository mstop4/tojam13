if (place_meeting(x,y+y_speed,obj_wall))
{
	y = (y+16) div 32 * 32;
				
	x_speed = 0;
	y_speed = 0;
	grav = 0;
	in_air = false;
	my_state = objectState.trophying_during;
	alarm[4] = 1;
}
	
else
{
	y_speed += grav*4;
	y += y_speed;
}