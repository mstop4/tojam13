my_state = rpsState.showboating;

var _p1_win, _p2_win;

if ((p1.my_rps_move == rps_move.rock && p2.my_rps_move == rps_move.scissors) ||
	(p1.my_rps_move == rps_move.paper && p2.my_rps_move == rps_move.rock) ||
	(p1.my_rps_move == rps_move.scissors && p2.my_rps_move == rps_move.paper))
{
	_p1_win = 1;
	_p2_win = -1;
}

else if ((p2.my_rps_move == rps_move.rock && p1.my_rps_move == rps_move.scissors) ||
	(p2.my_rps_move == rps_move.paper && p1.my_rps_move == rps_move.rock) ||
	(p2.my_rps_move == rps_move.scissors && p1.my_rps_move == rps_move.paper))
{
	_p1_win = -1;
	_p2_win = 1;
}

else
{
	with (obj_rps_sign)
		my_state = objectState.idle;
		
	my_state = rpsState.waiting;
	p1.my_rps_move = rps_move.none;
	p2.my_rps_move = rps_move.none;
	exit;
}

with (p1)
{
	my_state = objectState.idle;
	my_sign.my_state = objectState.idle;
	is_winner = _p1_win;
	my_sign = noone;
}

with (p2)
{
	my_state = objectState.idle;
	my_sign.my_state = objectState.idle;
	is_winner = _p2_win;
	my_sign = noone;
}