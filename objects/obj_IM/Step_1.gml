// keyboard/mouse

for (var j=0; j<2; j++)
{
	if (control_slot[j] == -1)
	{
		for (var i=0; i<action.max_actions; i++)
		{
			switch (kbm_device[j,i])
			{
				case device.keyboard:
			
					button_pressed[j,i] = keyboard_check_pressed(kbm_key[j,i]);
					button_held[j,i] = keyboard_check(kbm_key[j,i]);
					button_released[j,i] = keyboard_check_released(kbm_key[j,i]);
					break;
				
				case device.mouse:
				
					button_pressed[j,i] = device_mouse_check_button_pressed(mouse_device_id,kbm_key[j,i]);
					button_held[j,i] = device_mouse_check_button(mouse_device_id,kbm_key[j,i]);
					button_released[j,i] = device_mouse_check_button_released(mouse_device_id,kbm_key[j,i]);
					break;
				
				default:
			
					button_pressed[j,i] = false;
					button_held[j,i] = false;
					button_released[j,i] = false;				
			}
		}
	}

	// gamepad

	else
	{
		// stick
		var h_input = gamepad_axis_value(control_slot[j],gp_axislh);
		var v_input = gamepad_axis_value(control_slot[j],gp_axislv);
		var _old_button_state;
	
		//up
		button_pressed[j,action.up] = false;
		button_released[j,action.up] = false;
	
		_old_button_state = button_held[j,action.up];
		button_held[j,action.up] = v_input <= -stick_threshold;
	
		if (!_old_button_state && button_held[j,action.up])
			button_pressed[j,action.up] = true;
		else if (_old_button_state && !button_held[j,action.up])
			button_released[j,action.up] = true;
		
		//down
		button_pressed[j,action.down] = false;
		button_released[j,action.down] = false;
	
		_old_button_state = button_held[j,action.down];
		button_held[j,action.down] = v_input >= stick_threshold;
	
		if (!_old_button_state && button_held[j,action.down])
			button_pressed[j,action.down] = true;
		else if (_old_button_state && !button_held[j,action.down])
			button_released[j,action.down] = true;
		
		//left
		button_pressed[j,action.left] = false;
		button_released[j,action.left] = false;
	
		_old_button_state = button_held[j,action.left];
		button_held[j,action.left] = h_input <= -stick_threshold;
	
		if (!_old_button_state && button_held[j,action.left])
			button_pressed[j,action.left] = true;
		else if (_old_button_state && !button_held[j,action.left])
			button_released[j,action.left] = true;
		
		//right
		button_pressed[j,action.right] = false;
		button_released[j,action.right] = false;
	
		_old_button_state = button_held[j,action.right];
		button_held[j,action.right] = h_input >= stick_threshold;
	
		if (!_old_button_state && button_held[j,action.right])
			button_pressed[j,action.right] = true;
		else if (_old_button_state && !button_held[j,action.right])
			button_released[j,action.right] = true;
		
	
		// d-pad
		button_pressed[j,action.up] |= gamepad_button_check_pressed(control_slot[j],gp_padu);
		button_held[j,action.up] |= gamepad_button_check(control_slot[j],gp_padu);
		button_released[j,action.up] |= gamepad_button_check_released(control_slot[j],gp_padu);
	
		button_pressed[j,action.down] |= gamepad_button_check_pressed(control_slot[j],gp_padd);
		button_held[j,action.down] |= gamepad_button_check(control_slot[j],gp_padd);
		button_released[j,action.down] |= gamepad_button_check_released(control_slot[j],gp_padd);
	
		button_pressed[j,action.left] |= gamepad_button_check_pressed(control_slot[j],gp_padl);
		button_held[j,action.left] |= gamepad_button_check(control_slot[j],gp_padl);
		button_released[j,action.left] |= gamepad_button_check_released(control_slot[j],gp_padl);
	
		button_pressed[j,action.right] |= gamepad_button_check_pressed(control_slot[j],gp_padr);
		button_held[j,action.right] |= gamepad_button_check(control_slot[j],gp_padr);
		button_released[j,action.right] |= gamepad_button_check_released(control_slot[j],gp_padr);
	
		// buttons
		for (var i=action.interact; i<action.max_actions; i++)
		{
			button_pressed[j,i] = gamepad_button_check_pressed(control_slot[j],gp_key[j,i]);
			button_held[j,i] = gamepad_button_check(control_slot[j],gp_key[j,i]);
			button_released[j,i] = gamepad_button_check_released(control_slot[j],gp_key[j,i]);
		}
	}
}