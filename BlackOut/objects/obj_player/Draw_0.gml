

surface_set_target(obj_surf_erase.surff);
draw_set_color(c_black)
draw_sprite_ext(spr_player, 0,x,y,x_scale,y_scale,0,image_blend,image_alpha);
surface_reset_target()