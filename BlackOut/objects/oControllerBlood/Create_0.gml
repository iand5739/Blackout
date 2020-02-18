randomize()
window_set_cursor(cr_none)

instance_create_layer(0,0,"BackBoard",obj_blackboard)
instance_create_layer(0,0,"BackBoard",obj_transition)
global.surf_exists = 0
surf = surface_create(room_width, room_height);
surface_free(surf);
colorcount = 0