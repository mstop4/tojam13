enum device
{
	keyboard,
	mouse,
	gamepad
}

enum action
{
	up,
	down,
	left,
	right,
	interact,
	jump,
	dance,
	taunt,
	max_actions
}

enum rps_move
{
	none,
	rock,
	paper,
	scissors
}

enum objectState
{
	idle,
	pose,
	dance,
	taunt,
	flaunt,
	inactive,
	calm,
	
	trophying_start,
	trophying_during,
	
	grabbed_start,
	grabbed_during,
	grabbing_start,
	grabbing_during,
	
	kicked_start,
	kicked_during,
	kicking_start,
	kicking_during,
	
	slammed_start,
	slammed_during,
	slamming_start,
	slamming_during,
	
	piledrived_start,
	piledrived_during,
	piledriving_start,
	piledriving_during,
	
	screaming_start,
	screaming_during,
	screamed_start,
	screamed_during
}

enum rpsState
{
	preparing,
	waiting,
	pending,
	dueling,
	showboating,
	outro
}