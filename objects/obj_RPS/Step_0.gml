switch (my_state)
{
	case rpsState.waiting:
		if (p1.my_rps_move != rps_move.none &&
			p2.my_rps_move != rps_move.none)
		{
			alarm[1] = 60;
			my_state = rpsState.pending;
		}
		break;
		
	default:
		break;
}