if (pulse)
{
	var _scale = (period-t)/period * 0.5 + 1;
	image_xscale = _scale;
	image_yscale = _scale;
	
	t = (t + 1) mod period;
}

else
{
	image_xscale = 1;
	image_yscale = 1;
}