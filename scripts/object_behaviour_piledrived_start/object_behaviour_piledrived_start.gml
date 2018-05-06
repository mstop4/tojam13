if (grabber_id != noone)
{
	var _dist = point_distance(x,y,grabber_id.x+grabber_id.sprite_width/2-sprite_width/2+(grabber_id.facing*hold_h_xoffset),grabber_id.y+hold_h_yoffset);
		
	if (_dist < lift_speed)
	{
		x = grabber_id.x+grabber_id.sprite_width/2-sprite_width/2+(grabber_id.facing*hold_h_xoffset);
		y = grabber_id.y+hold_h_yoffset;
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
		var _dir = point_direction(x,y,grabber_id.x+grabber_id.sprite_width/2-sprite_width/2+(grabber_id.facing*hold_h_xoffset),grabber_id.y+hold_h_yoffset);
		x += lengthdir_x(lift_speed,_dir);
		y += lengthdir_y(lift_speed,_dir);
	}
}