if (surface_exists(surf))
{
	global.surf_exists = 1
}
else
{
	global.surf_exists = 0
}


colorcount += 1
globalvar c_rainbow;
c_rainbow = make_color_hsv((colorcount) mod 255,255,255);