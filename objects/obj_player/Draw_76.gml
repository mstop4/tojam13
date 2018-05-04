switch (my_state)
{
	case objectState.dance:
		switch (type)
		{
			case 0:
				sprite_index = spr_player_dance;
				break;
			case 1:
				sprite_index = spr_player_dance2;
				break;
			case 2:
				sprite_index = spr_player_dance3;
				break;
			case 3:
				sprite_index = spr_player_dance4;
		}
		break;
		
	default:
		sprite_index = spr_player;
}