event_inherited();

switch (my_state)
{
	case objectState.idle:
		if (h_input != 0)
			sprite_index = spr_player_walk;
		else
			sprite_index = spr_player_idle;
		break;
		
	case objectState.grabbing_start:
		sprite_index = spr_player_pick_up;
		break;
		
	case objectState.grabbing_during:
		sprite_index = spr_player_pick_up;
		image_index = 1;
		image_speed = 0;
		break;
		
	case objectState.kicking_start:
	case objectState.piledriving_start:
	case objectState.screaming_start:
		sprite_index = spr_player_put_down;
		break;	
		
	case objectState.kicking_during:
		sprite_index = spr_player_kick;
		break;
		
	case objectState.piledriving_during:
		sprite_index = spr_player_piledrive;
		image_index = y_speed <= 0 ? 0 : 1;
		break;
		
	case objectState.screaming_during:
		sprite_index = spr_player_scream;
		break;
	 
	case objectState.slamming_start:
		image_index = 0;
		sprite_index = spr_player_slam;
		break;
		
	case objectState.slamming_during:
		image_index = 1;
		sprite_index = spr_player_slam;
		break;
		
	case objectState.flaunt:
		sprite_index = spr_player_dance3;
		break;
		
	case objectState.trophying_start:
	case objectState.trophying_during:
		sprite_index = spr_player_dance2;
		break;
		
	default:
		sprite_index = spr_player_idle;
}