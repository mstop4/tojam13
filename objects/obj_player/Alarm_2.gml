/// @description scream end

my_state = objectState.idle;
grabbed_id.my_state = objectState.idle;
grabbed_id.in_air = true;
grabbed_id.x_speed = 6*facing;
grabbed_id.y_speed = -2;
grabbed_id.grav = grabbed_id.my_grav;
grabbed_id.grabber_id = noone;
grabbed_id = noone;