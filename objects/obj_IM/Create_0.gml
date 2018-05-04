control_slot = -1;
mouse_device_id = 0;

kbm_key[action.up] = ord("W");
kbm_key[action.down] = ord("S");
kbm_key[action.left] = ord("A");
kbm_key[action.right] = ord("D");
kbm_key[action.jump] = ord("K");
kbm_key[action.interact] = ord("L");

kbm_device[action.up] = device.keyboard;
kbm_device[action.down] = device.keyboard;
kbm_device[action.left] = device.keyboard;
kbm_device[action.right] = device.keyboard;
kbm_device[action.jump] = device.keyboard;
kbm_device[action.interact] = device.keyboard;

gp_key[action.interact] = gp_face3;
gp_key[action.jump] = gp_face1;

for (var i=0; i<action.max_actions; i++)
{
	button_pressed[i] = false;
	button_held[i] = false;
	button_released[i] = false;
}