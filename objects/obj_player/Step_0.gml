if (my_state == objectState.idle ||
	my_state == objectState.grabbing_during)
{
	var _h_input = obj_IM.button_held[action.right] - obj_IM.button_held[action.left];
	var _v_input = obj_IM.button_held[action.down] - obj_IM.button_held[action.up];

	if (_h_input != 0)
	{
		x += my_speed * _h_input;
	}

	if (!in_air && obj_IM.button_pressed[action.jump])
	{
		y--;
		y_speed = my_jump_speed;
	}

	if (obj_IM.button_pressed[action.interact])
	{
		if (my_state == objectState.idle)
		{
			if (closest_obj != noone)
			{
				my_state = objectState.grabbing_during;
				grabbed_id = closest_obj;
				grabbed_id.my_state = objectState.grabbed_start;
				grabbed_id.grabber_id = id;
			}
		}
		
		else if (my_state == objectState.grabbing_during)
		{
			my_state = objectState.idle;
			grabbed_id.my_state = objectState.idle;
			grabbed_id.grabber_id = noone;
			grabbed_id = noone;
			
		}
	}
}
event_inherited();