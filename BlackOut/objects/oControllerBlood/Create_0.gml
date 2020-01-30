surf = surface_create(room_width, room_height);
surface_free(surf);
surf = surface_create(room_width, room_height);


randomize()
globalvar c_rainbow;


window_set_cursor(cr_none)
c_rainbow = make_color_hsv((room_speed/50) mod 255,255,255);


instance_create_layer(0,0,"BackBoard",obj_blackboard)
instance_create_layer(0,0,"BackBoard",obj_transition)
global.surf_exists = 0

colorcount = 0