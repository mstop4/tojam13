my_state = rpsState.showboating;

with (p1.my_sign)
{
	x_speed = irandom_range(-3,3);
	my_state = objectState.idle;
}

with (p2.my_sign)
{
	x_speed = irandom_range(-3,3);
	my_state = objectState.idle;
}
		
var _p1_win, _p2_win;

if ((p1.my_rps_move == rps_move.rock && p2.my_rps_move == rps_move.scissors) ||
	(p1.my_rps_move == rps_move.paper && p2.my_rps_move == rps_move.rock) ||
	(p1.my_rps_move == rps_move.scissors && p2.my_rps_move == rps_move.paper))
{
	winner = 0;
	_p1_win = 1;
	_p2_win = -1;
}

else if ((p2.my_rps_move == rps_move.rock && p1.my_rps_move == rps_move.scissors) ||
	(p2.my_rps_move == rps_move.paper && p1.my_rps_move == rps_move.rock) ||
	(p2.my_rps_move == rps_move.scissors && p1.my_rps_move == rps_move.paper))
{
	winner = 1;
	_p1_win = -1;
	_p2_win = 1;
}

else
{
	my_state = rpsState.waiting;
	instance_destroy(obj_rps_sign);
	p1.my_rps_move = rps_move.none;
	p2.my_rps_move = rps_move.none;
	exit;
}

with (p1)
{
	my_state = _p1_win == 1 ? objectState.flaunt : objectState.idle;
	alarm[1] = _p1_win == 1 ? 60 : -1;
	is_winner = _p1_win;
}

with (p2)
{
	my_state = _p2_win == 1 ? objectState.flaunt : objectState.idle;
	alarm[1] = _p2_win == 1 ? 60 : -1; 
	is_winner = _p2_win;
}

	audio_stop_sound(mus_normal_loop);
	audio_play_sound(snd_grunt,50,false);
	audio_play_sound(snd_explode,50,false);
	audio_play_sound(mus_win_loop,100,true);

alarm[2] = 60;