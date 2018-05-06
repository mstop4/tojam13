alarm[3] = 600;
var _t = instance_create_layer(320,0,"Instances",obj_trophy);

if (winner == 0)
	_t.image_index = 0;
else
	_t.image_index = 1;