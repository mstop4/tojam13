if (pulse)
{
	var _scale = dcos((t/period) * 90) * 0.25 + 1; //(period-t)/period * 0.5 + 1;
	image_xscale = _scale;
	image_yscale = _scale;
	image_index = 1;
	
	t = (t + 1) mod period;
}

else
{
	image_xscale = 1;
	image_yscale = 1;
	image_index = 0;
}