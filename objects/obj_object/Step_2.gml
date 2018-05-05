switch (my_state)
{	
	case objectState.grabbed_during:
	case objectState.slammed_start:

		object_behaviour_grabbed_during();
		break;
		
	case objectState.piledrived_during:
		
		object_behaviour_piledrived_during();
		break;
}