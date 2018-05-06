if (grabber_id != noone)
{
	var _dist = point_distance(x,y,grabber_id.x+grabber_id.sprite_width/2-sprite_width/2+(grabber_id.facing*hold_h_xoffset),grabber_id.y+hold_h_yoffset);
		
	if (_dist < lift_speed)
	{
		x = grabber_id.x+grabber_id.sprite_width/2-sprite_width/2+(grabber_id.facing*hold_h_xoffset);
		y = grabber_id.y+hold_h_yoffset;
		in_air = true;
		my_state = objectState.screamed_during;
		grabber_id.my_state = objectState.screaming_during;
		grabber_id.alarm[2] = 60;
	}
		
	else
	{
		var _dir = point_direction(x,y,grabber_id.x+grabber_id.sprite_width/2-sprite_width/2+(grabber_id.facing*hold_h_xoffset),grabber_id.y+hold_h_yoffset);
		x += lengthdir_x(lift_speed,_dir);
		y += lengthdir_y(lift_speed,_dir);
	}
}