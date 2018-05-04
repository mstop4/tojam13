var _h_input = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _v_input = keyboard_check(ord("S")) - keyboard_check(ord("W"));

if (_h_input != 0)
{
	x += my_speed * _h_input;
}

if (!in_air && keyboard_check_pressed(ord("J")))
{
	y--;
	y_speed = my_jump_speed;
}

if (in_air)
{
	if (place_meeting(x,y+1,obj_wall))
	{
		grav = 0;
		y_speed = 0;
		in_air = false;
		
		y = y div 32 * 32;
		
	}
	
	else
	{
		y_speed += grav;
		y += y_speed;
	}
}

else
{
	if (!place_meeting(x,y+1,obj_wall))
	{
		grav = my_grav;
		in_air = true;
	}
}