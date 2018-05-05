/// @description cash taunt burst

if (num_cash_bursts < max_cash_burst)
{
	part_emitter_burst(obj_particles.ps,cash_emit,obj_particles.part_cash,10);
	num_cash_bursts++;
	alarm[3] = 30;
}

else
{
	num_cash_bursts = 0;
	my_state = objectState.idle;
}