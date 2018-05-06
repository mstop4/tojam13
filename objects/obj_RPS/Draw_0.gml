if (my_state == rpsState.showboating)
{
	var _text;
	_text = winner == 0 ? "WINNER: RED!!!" : "WINNER: BLUE!!!";
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font(fnt_winner);
	draw_text(room_width/2+shake_x,room_height/2+shake_y,_text);
	
	if (alarm[3] > -1)
		draw_text(room_width/2+shake_x/2,room_height/2-100+shake_y/2,string_format(alarm[3]/60,1,2));
}