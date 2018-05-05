/// @description trophying burst

if (num_trophy_bursts < max_trophy_burst)
{
	instance_create_layer(x+irandom_range(-64,64),0,"Instances",obj_trophy);
	num_trophy_bursts++;
	alarm[4] = 15;
}

else
{
	num_trophy_bursts = 0;
	my_state = objectState.idle;
}