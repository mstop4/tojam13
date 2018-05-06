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
		
	case rpsState.showboating:
		shake_x = irandom_range(-2,2);
		shake_y = irandom_range(-2,2);
		break;
		
	default:
		break;
}

if (shake_screen)
{
	shake_amount = max_shake * alarm[5] / max_duration;
	
	screen_shake_x = irandom_range(-shake_amount,shake_amount);
	screen_shake_y = irandom_range(-shake_amount,shake_amount);
}