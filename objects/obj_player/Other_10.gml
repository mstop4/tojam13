/// @description reset

x = xstart;
y = ystart;
my_state = objectState.calm;
grabber_id = noone;
grabbed_id = noone;
v_facing = 1;
facing = my_player_number == 0 ? 1 : -1;
in_air = false;
grav = 0;
x_speed = 0;
y_speed = 0;
my_rps_move = rps_move.none;
instance_destroy(my_sign);
my_sign = noone;

alarm[0] = -1;
alarm[1] = -1;
alarm[2] = -1;
alarm[3] = -1;
alarm[4] = -1;