var _closest_dist = 1000000;
closest_obj = noone;

with (obj_object)
{
	if (id != other.id && 
		my_state != objectState.grabbed_start && 
		my_state != objectState.grabbed_during)
	{
		var _dist = distance_to_object(other);
		if (_dist <= other.max_grab_dist && _dist < _closest_dist)
		{
			_closest_dist = _dist;
			other.closest_obj = id;
		}
	}
}