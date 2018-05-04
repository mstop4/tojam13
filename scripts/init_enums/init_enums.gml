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
	max_actions
}

enum objectState
{
	idle,
	
	grabbed_start,
	grabbed_during,
	grabbing_start,
	grabbing_during,
	
	kicked_start,
	kicked_during,
	kicking_start,
	kicking_during
}