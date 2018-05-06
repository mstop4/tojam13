/// @desc slamming end

my_state = objectState.slamming_during;

grabbed_id.my_state = objectState.idle;
grabbed_id.x_speed = 0;
grabbed_id.y_speed = 8;
grabbed_id.grabber_id = noone;
grabbed_id = noone;
alarm[1] = 30;

audio_play_sound(snd_whoosh,50,false);