ps = part_system_create();

part_cash = part_type_create();
part_type_orientation(part_cash,0,360,5,0,false);
part_type_alpha3(part_cash,1,1,0);
part_type_life(part_cash,45,60);
part_type_direction(part_cash,45,135,0,0);
part_type_speed(part_cash,2,4,0,0);
part_type_gravity(part_cash,0.2,270);
part_type_sprite(part_cash,spr_cash,false,false,false);