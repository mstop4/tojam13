h_input = obj_IM.button_held[my_player_number,action.right] - obj_IM.button_held[my_player_number,action.left];
v_input = obj_IM.button_held[my_player_number,action.down] - obj_IM.button_held[my_player_number,action.up];

if (my_state == objectState.idle ||
	my_state == objectState.grabbing_during)
{
	if (h_input != 0)
		facing = h_input;
		
	x_speed = my_speed * h_input;

	if (!in_air && obj_IM.button_pressed[my_player_number,action.jump])
	{
		y--;
		y_speed = my_jump_speed;
	}

	if (obj_IM.button_pressed[my_player_number,action.interact])
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
			
				if (v_input == 1)
				{
					my_state = objectState.slamming_start;
					grabbed_id.my_state = objectState.slammed_start;
					in_air = true;
					x_speed = 0;
					y_speed = my_jump_speed;
					grav = my_grav;
					alarm[0] = 30;
				}
				
				else if (v_input == -1)
				{
					my_state = objectState.piledriving_start;
					grabbed_id.my_state = objectState.piledrived_start;
				}
			
				else if (h_input != 0)
				{
					my_state = objectState.kicking_start;
					grabbed_id.my_state = objectState.kicked_start;
				}
				
				else
				{
					my_state = objectState.screaming_start;
					grabbed_id.my_state = objectState.screamed_start;
				}
				break;
				
			case objectState.slamming_start:
				break;
		}
	}
	
	/*else if (obj_IM.button_pressed[my_player_number,action.dance])
	{
		my_state = objectState.dance;
		alarm[1] = 120;
		
		if (v_input == 1)
			type = 1;
		else if (v_input == -1)
			type = 2;
		else if (h_input != 0)
			type = 3;
		else 
			type = 0;
	}*/
	
	else if (obj_IM.button_pressed[my_player_number,action.taunt])
	{
		if (v_input == 1)
		{
			my_state = objectState.trophying_start;
			y_speed = piledrive_speed;
			x_speed = 0;
			in_air = true;
			grav = my_grav;
		}
		else if (v_input == -1)
			type = 2;
		else if (h_input != 0)
			type = 3;
		else 
		{
			my_state = objectState.taunt;
			alarm[3] = 1;
		}
	}
}

event_inherited();