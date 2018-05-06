event_inherited();

h_input = 0;
v_input = 0;

closest_obj = noone;
grabbed_id = noone;
type = 0;

num_cash_bursts = 0;
num_trophy_bursts = 0;

my_state = objectState.calm;
my_rps_move = rps_move.none;
my_sign = noone;

cash_emit = part_emitter_create(obj_particles.ps);