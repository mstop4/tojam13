switch (my_state) 
{
	case objectState.idle:
	case objectState.grabbing_start:
	case objectState.grabbing_during:
	
		object_behaviour_idle();
		break;
	
	case objectState.grabbed_start:
	
		object_behaviour_grabbed_start();
		break;
	
	case objectState.grabbed_during:
	case objectState.slammed_start:

		object_behaviour_grabbed_during();
		break;
		
	case objectState.kicked_start:
	
		object_behaviour_kicked_start();
		break;
		
	case objectState.piledrived_start:
	
		object_behaviour_piledrived_start();
		break;
		
	case objectState.piledrived_during:
		
		object_behaviour_piledrived_during();
		break;
		
	case objectState.piledriving_during:
		
		object_behaviour_piledriving_during();
		break;
		
	case objectState.slamming_start:
	case objectState.piledriving_start:
		
		break;
}