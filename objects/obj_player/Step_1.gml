if (is_winner)
{
	var _closest_dist = 1000000;
	closest_obj = noone;

	with (obj_object)
	{
		if (id != other.id && 
			my_state == objectState.idle)
		{
			var _dist = distance_to_object(other);
			if (_dist <= other.max_grab_dist && _dist < _closest_dist)
			{
				_closest_dist = _dist;
				other.closest_obj = id;
			}
		}
	}

	part_emitter_region(obj_particles.ps,cash_emit,x+12,x+20,y+12,y+20,ps_shape_ellipse,ps_distr_linear);
}