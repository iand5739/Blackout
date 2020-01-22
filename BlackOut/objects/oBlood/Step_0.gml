image_xscale -= sizeChange;
image_yscale  = image_xscale;


if (movSpd > 0)
    image_alpha -= random_range(0.05, 0.1);

movSpd = Approach(movSpd, 0, fric);

if (instance_exists(oControllerBlood) and global.surf_exists == 1) {
    surface_set_target(oControllerBlood.surf);
	if (place_meeting(x,y,obj_wall))
	{
		draw_sprite_ext(sBlood, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, random(0.1)+0.9);
	}
    surface_reset_target();  
}

if (image_xscale <= 0)
    instance_destroy();