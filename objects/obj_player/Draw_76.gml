image_speed = 1;

switch (my_state)
{
	case objectState.idle:
		if (facing == 1)
		{
			if (h_input == 0)
				sprite_index = spr_player_r;
			else
				sprite_index = spr_player_walk_r;
		}
		
		else
		{
			if (h_input == 0)
				sprite_index = spr_player_l;
			else
				sprite_index = spr_player_walk_l;
		}
		break;
		
	case objectState.grabbing_start:
		if (facing == 1)
			sprite_index = spr_player_pick_up_r;
		else
			sprite_index = spr_player_pick_up_l;
		break;
		
	case objectState.grabbing_during:
		if (facing == 1)
			sprite_index = spr_player_pick_up_r;
		else
			sprite_index = spr_player_pick_up_l;
		image_index = 1;
		image_speed = 0;
		break;
		
	case objectState.kicking_start:
	case objectState.piledriving_start:
	case objectState.screaming_start:
		if (facing == 1)
			sprite_index = spr_player_put_down_r;
		else
			sprite_index = spr_player_put_down_l;
		break;	
		
	case objectState.kicking_during:
		if (facing == 1)
			sprite_index = spr_player_kick_r;
		else
			sprite_index = spr_player_kick_l;
		break;
		
	case objectState.piledriving_during:
		if (facing == 1)
		{
			sprite_index = spr_player_piledrive_r;
			if (y_speed <= 0)
				image_index = 0;
			else
				image_index = 1;
		}
		
		else
		{
			sprite_index = spr_player_piledrive_l;
			if (y_speed <= 0)
				image_index = 0;
			else
				image_index = 1;
		}
		break;
		
	case objectState.screaming_during:
		if (facing == 1)
			sprite_index = spr_player_scream_r;
		else
			sprite_index = spr_player_scream_l;
		break;
		
	case objectState.flaunt:
		sprite_index = spr_player_dance;
		break;
		
	case objectState.trophying_start:
	case objectState.trophying_during:
		sprite_index = spr_player_dance2;
		break;
		
	default:
		sprite_index = spr_player_r;
}