surface_set_target(obj_surf_erase.surff);
gpu_set_blendmode(bm_subtract);
draw_sprite(spr_player,0,x,y)
gpu_set_blendmode(bm_normal);
surface_reset_target()