//if (closest_obj != noone)
	//draw_circle(closest_obj.x, closest_obj.y, 4, false);
	
if (my_state == objectState.calm && my_rps_move != rps_move.none)
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font(fnt_normal);
	draw_text(x+32,y-8,"OK");
}