event_inherited();

switch (my_state)
{
	case objectState.calm:
		if (my_player_number == 0)
			sprite_index = spr_player_calm;
		else
			sprite_index = spr_player2_calm;
		break;
	
	case objectState.idle:
		if (is_winner == 1)
		{
			if (h_input != 0)
			{
				if (my_player_number == 0)
					sprite_index = spr_player_walk;
				else
					sprite_index = spr_player2_walk;
			}
			else
			{
				if (my_player_number == 0)
					sprite_index = spr_player_idle;
				else
					sprite_index = spr_player2_idle;
			}
		}
		
		else if (is_winner == -1)
		{
			if (my_player_number == 0)
				sprite_index = spr_player_sad;
			else
				sprite_index = spr_player2_sad;
		}
		break;
		
	case objectState.grabbing_start:
		{
			if (my_player_number == 0)
				sprite_index = spr_player_pick_up;
			else
				sprite_index = spr_player2_pick_up;
		}
		break;
		
	case objectState.grabbing_during:
		{
			if (my_player_number == 0)
				sprite_index = spr_player_pick_up;
			else
				sprite_index = spr_player2_pick_up;
		}
		image_index = 1;
		image_speed = 0;
		break;
		
	case objectState.kicking_start:
	case objectState.piledriving_start:
	case objectState.screaming_start:
		{
			if (my_player_number == 0)
				sprite_index = spr_player_put_down;
			else
				sprite_index = spr_player2_put_down;
		}
		break;	
		
	case objectState.kicking_during:
		{
			if (my_player_number == 0)
				sprite_index = spr_player_kick;
			else
				sprite_index = spr_player2_kick;
		}
		break;
		
	case objectState.piledriving_during:
		{
			if (my_player_number == 0)
				sprite_index = spr_player_piledrive;
			else
				sprite_index = spr_player2_piledrive;
		}
		image_index = y_speed <= 0 ? 0 : 1;
		break;
		
	case objectState.screaming_during:
		{
			if (my_player_number == 0)
				sprite_index = spr_player_scream;
			else
				sprite_index = spr_player2_scream;
		}
		break;
	 
	case objectState.slamming_start:
		image_index = 0;
		{
			if (my_player_number == 0)
				sprite_index = spr_player_slam;
			else
				sprite_index = spr_player2_slam;
		}
		break;
		
	case objectState.slamming_during:
		image_index = 1;
		{
			if (my_player_number == 0)
				sprite_index = spr_player_slam;
			else
				sprite_index = spr_player2_slam;
		}
		break;
		
	case objectState.flaunt:
		{
			if (my_player_number == 0)
				sprite_index = spr_player_flaunt;
			else
				sprite_index = spr_player2_flaunt;
		}
		break;
		
	case objectState.trophying_start:
	case objectState.trophying_during:
		{
			if (my_player_number == 0)
				sprite_index = spr_player_dance2;
			else
				sprite_index = spr_player_dance2;
		}
		break;
		
	default:
		{
			if (my_player_number == 0)
				sprite_index = spr_player_sad;
			else
				sprite_index = spr_player2_sad;
		}
}