switch (my_state) 
{
	case objectState.idle:
	case objectState.grabbing_start:
	case objectState.grabbing_during:
	case objectState.slamming_start:
	
		object_behaviour_idle();
		break;
	
	case objectState.grabbed_start:
	
		object_behaviour_grabbed_start();
		break;
		
	case objectState.kicked_start:
	
		object_behaviour_kicked_start();
		break;
		
	case objectState.screamed_start:
	
		object_behaviour_screamed_start();
		break;
		
	case objectState.piledrived_start:
	
		object_behaviour_piledrived_start();
		break;
		
	case objectState.trophying_start:
		
		object_behaviour_trophying_start();
		break;
		

	case objectState.piledriving_during:
		
		object_behaviour_piledriving_during();
		break;
		
	case objectState.piledriving_start:
		
		break;
		
	case objectState.screaming_during:
		object_behaviour_screaming_during();
		break;
}