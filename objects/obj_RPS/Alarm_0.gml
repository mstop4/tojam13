my_state = rpsState.showboating;

with (p1)
{
	my_state = objectState.idle;
	my_sign.my_state = objectState.idle;
	is_winner = 1;
	my_sign = noone;
}

with (p2)
{
	my_state = objectState.idle;
	//my_sign.my_state = objectState.idle;
	is_winner = -1;
	my_sign = noone;
}