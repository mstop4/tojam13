switch (my_state)
{
	case rpsState.waiting:
		if (obj_player.my_rps_move != rps_move.none)
		{
			alarm[0] = 60;
			my_state = rpsState.pending;
		}
		break;
		
	default:
		break;
}