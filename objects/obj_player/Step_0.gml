if (my_state == objectState.calm)
{
	var _xx, _yy;
	if (my_player_number == 0)
	{
		_xx = 200;
		_yy = 100;
	}
	
	else
	{
		_xx = 400;
		_yy = 100;
	}
	
	if (my_rps_move == rps_move.none)
	{
		if (obj_IM.button_pressed[my_player_number,action.interact])
		{
			my_sign = instance_create_layer(_xx,_yy,"Instances",obj_rps_sign);	
			my_sign.image_index = 0;
			my_rps_move = rps_move.rock;
		}
		
		else if (obj_IM.button_pressed[my_player_number,action.jump])
		{
			my_sign = instance_create_layer(_xx,_yy,"Instances",obj_rps_sign);
			my_sign.image_index = 1;
			my_rps_move = rps_move.paper;
		}
		
		else if (obj_IM.button_pressed[my_player_number,action.taunt])
		{
			my_sign = instance_create_layer(_xx,_yy,"Instances",obj_rps_sign);
			my_sign.image_index = 2;
			my_rps_move = rps_move.scissors;
		}
	}
}

else
{
	if (is_winner)
	{
		h_input = obj_IM.button_held[my_player_number,action.right] - obj_IM.button_held[my_player_number,action.left];
		v_input = obj_IM.button_held[my_player_number,action.down] - obj_IM.button_held[my_player_number,action.up];

		if (h_input != 0)
			facing = h_input;
		
		if (my_state == objectState.idle)
		{
			x_speed = my_speed * h_input;

			if (!in_air && obj_IM.button_pressed[my_player_number,action.jump])
			{
				y--;
				y_speed = my_jump_speed;
			}
	
			if (obj_IM.button_pressed[my_player_number,action.taunt])
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

		if (obj_IM.button_pressed[my_player_number,action.interact])
		{
			switch (my_state)
			{
				case objectState.idle:
					if (closest_obj != noone)
					{
						my_state = objectState.grabbing_during;
						x_speed = 0;
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
	}
	event_inherited();
}