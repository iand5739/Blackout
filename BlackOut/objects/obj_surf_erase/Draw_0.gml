if (surface_exists(surff))
    draw_surface_ext(surff, 0, 0, image_xscale, image_yscale, image_angle, image_blend, 1);
else
    surff = surface_create(room_width, room_height);
	
surface_set_target(self.surff);
draw_set_color(c_black)
draw_rectangle(0,0,room_width,room_height,false)
surface_reset_target()