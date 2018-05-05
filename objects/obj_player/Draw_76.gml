switch (my_state)
{
	case objectState.flaunt:
		sprite_index = spr_player_dance;
		break;
		
	case objectState.trophying_start:
	case objectState.trophying_during:
		sprite_index = spr_player_dance2;
		break;
		
	default:
		sprite_index = spr_player;
}