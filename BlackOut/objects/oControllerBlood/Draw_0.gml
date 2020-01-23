if (surface_exists(surf))
    draw_surface_ext(surf, 0, 0, image_xscale, image_yscale, image_angle, image_blend, 1);
else
    surf = surface_create(room_width, room_height);