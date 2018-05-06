control_slot[0] = 0;
mouse_device_id[0] = 0;

kbm_key[0, action.up] = ord("W");
kbm_key[0, action.down] = ord("S");
kbm_key[0, action.left] = ord("A");
kbm_key[0, action.right] = ord("D");
kbm_key[0, action.jump] = ord("K");
kbm_key[0, action.interact] = ord("L");
kbm_key[0, action.dance] = ord("J");
kbm_key[0, action.taunt] = ord("I");

kbm_device[0, action.up] = device.keyboard;
kbm_device[0, action.down] = device.keyboard;
kbm_device[0, action.left] = device.keyboard;
kbm_device[0, action.right] = device.keyboard;
kbm_device[0, action.jump] = device.keyboard;
kbm_device[0, action.interact] = device.keyboard;
kbm_device[0, action.dance] = device.keyboard;
kbm_device[0, action.taunt] = device.keyboard;

gp_key[0, action.interact] = gp_face3;
gp_key[0, action.jump] = gp_face1;
gp_key[0, action.dance] = gp_face4;
gp_key[0, action.taunt] = gp_face2;

control_slot[1] = -1;
mouse_device_id[1] = 1;

kbm_key[1, action.up] = vk_up;
kbm_key[1, action.down] = vk_down;
kbm_key[1, action.left] = vk_left;
kbm_key[1, action.right] = vk_right;
kbm_key[1, action.jump] = ord("Z");
kbm_key[1, action.interact] = ord("X");
kbm_key[1, action.dance] = ord("C");
kbm_key[1, action.taunt] = ord("V");

kbm_device[1, action.up] = device.keyboard;
kbm_device[1, action.down] = device.keyboard;
kbm_device[1, action.left] = device.keyboard;
kbm_device[1, action.right] = device.keyboard;
kbm_device[1, action.jump] = device.keyboard;
kbm_device[1, action.interact] = device.keyboard;
kbm_device[1, action.dance] = device.keyboard;
kbm_device[1, action.taunt] = device.keyboard;

gp_key[1, action.interact] = gp_face3;
gp_key[1, action.jump] = gp_face1;
gp_key[1, action.dance] = gp_face4;
gp_key[1, action.taunt] = gp_face2;

for (var j=0; j<2; j++)
{
	for (var i=0; i<action.max_actions; i++)
	{
		button_pressed[j,i] = false;
		button_held[j,i] = false;
		button_released[j,i] = false;
	}
}