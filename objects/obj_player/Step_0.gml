var _h_input = obj_IM.button_held[action.right] - obj_IM.button_held[action.left];
var _v_input = obj_IM.button_held[action.down] - obj_IM.button_held[action.up];

if (my_state == objectState.idle ||
	my_state == objectState.grabbing_during)
{
	if (_h_input != 0)
		facing = _h_input;
		
	x_speed = my_speed * _h_input;

	if (!in_air && obj_IM.button_pressed[action.jump])
	{
		y--;
		y_speed = my_jump_speed;
	}

	if (obj_IM.button_pressed[action.interact])
	{
		switch (my_state)
		{
			case objectState.idle:
				if (closest_obj != noone)
				{
					my_state = objectState.grabbing_during;
					grabbed_id = closest_obj;
					grabbed_id.my_state = objectState.grabbed_start;
					grabbed_id.grabber_id = id;
					grabbed_id.x_speed = 0;
					grabbed_id.y_speed = 0;
				}
				break;
		
			case objectState.grabbing_during:
			
				if (_v_input == 1)
				{
					my_state = objectState.slamming_start;
					grabbed_id.my_state = objectState.slammed_start;
					alarm[0] = 30;
				}
				
				else if (_v_input == -1)
				{
					my_state = objectState.piledriving_start;
					grabbed_id.my_state = objectState.piledrived_start;
				}
			
				else
				{
					my_state = objectState.kicking_start;
					grabbed_id.my_state = objectState.kicked_start;
				}
				break;
				
			case objectState.slamming_start:
				break;
		}
	}
	
	else if (obj_IM.button_pressed[action.dance])
	{
		my_state = objectState.dance;
		alarm[1] = 120;
		
		if (_v_input == 1)
			type = 1;
		else if (_v_input == -1)
			type = 2;
		else if (_h_input != 0)
			type = 3;
		else 
			type = 0;
	}
}
event_inherited();