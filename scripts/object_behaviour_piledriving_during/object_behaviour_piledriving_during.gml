if (place_meeting(x,y+y_speed,obj_wall))
{
	y = (y+16) div 32* 32;
				
	x_speed = -facing*slam_speed_x;
	y_speed = slam_speed_y;
	my_state = objectState.idle;
	grabbed_id.my_state = objectState.idle;
	grabbed_id.x_speed = 6*facing;
	grabbed_id.y_speed = -6;
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