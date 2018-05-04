var _h_input = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _v_input = keyboard_check(ord("S")) - keyboard_check(ord("W"));

if (_h_input != 0)
{
	x += my_speed * _h_input;
}