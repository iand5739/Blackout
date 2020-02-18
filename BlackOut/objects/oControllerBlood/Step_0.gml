if (surface_exists(surf))
{
	global.surf_exists = 1
}
else
{
	global.surf_exists = 0
}


colorcount += 0.3
globalvar c_rainbow;
c_rainbow = make_color_hsv((colorcount) mod 255,255,255);


globalvar c_rainbowfast;
c_rainbowfast = make_color_hsv((colorcount*4) mod 255,255,255);