counter++

key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
key_space = keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("W"));

if (global.active == false)
{
	key_right = 0
	key_left = 0
	key_space = 0
}


hsp = (key_right-key_left)*walksp

//accelerating ground fall and jump
if (!place_meeting(x,y + 1,obj_wall)){
	vsp += grav;
}
else if (key_space) {

vsp = jumpht * -1;
x_scale = image_xscale/strech_scale;
y_scale = image_yscale*strech_scale;
	
}
	
	
//horizontial collision
if (place_meeting(x + hsp,y,obj_wall)) {
	while (!place_meeting(x+sign(hsp),y,obj_wall)){
		x += sign(hsp);
	}	
	hsp = 0;
}

x += hsp;

if (place_meeting(x+1,y,obj_wall) && (!place_meeting(xprevious+1,y,obj_wall)))
{
	x_scale = image_xscale/strech_scale;
	y_scale = image_yscale*strech_scale;
	if (global.surf_exists == 1)
	{
		var count = random_range(16, 32);
		global.blood_blend = make_colour_rgb(128+random(127), 128+random(127), 128+random(127))
	    for (var i = 0; i < count; i++) {
	        instance_create_depth(x + random_range(-16, 16), y + random_range(-16, 16),0, oBlood);
	}
    }
}

if (place_meeting(x-1,y,obj_wall) && (!place_meeting(xprevious-1,y,obj_wall)))
{
	x_scale = image_xscale/strech_scale;
	y_scale = image_yscale*strech_scale;
	if (global.surf_exists == 1)
	{
		var count = random_range(16, 32);
		global.blood_blend = make_colour_rgb(128+random(127), 128+random(127), 128+random(127))
	    for (var i = 0; i < count; i++) {
	        instance_create_depth(x + random_range(-16, 16), y + random_range(-16, 16),0, oBlood);
    }
	}
}

//vertical collision
if (place_meeting(x,y + vsp,obj_wall)) {
	while (!place_meeting(x,y+sign(vsp),obj_wall)){
		y += sign(vsp);
	}	
	if (global.surf_exists == 1)
	{
		var count = random_range(16, 32);
		global.blood_blend = make_colour_rgb(128+random(127), 128+random(127), 128+random(127))
	    for (var i = 0; i < count; i++) {
	        instance_create_depth(x + random_range(-16, 16), y + random_range(-16, 16),0, oBlood);
		}
	}
	vsp = 0;
} 
y += vsp;
	
// check for landing
if (place_meeting(x,y + 1,obj_wall) && (!place_meeting(x,yprevious + 1,obj_wall))) {
	x_scale = image_xscale*strech_scale;
	y_scale = image_yscale/strech_scale;
}

x_scale = lerp(x_scale, image_xscale, 0.1)
y_scale = lerp(y_scale, image_yscale, 0.1)


if (x != xprevious and counter > 10)
{
	if (global.surf_exists == 1)
	{
		var count = random_range(16, 32);
		global.blood_blend = make_colour_rgb(128+random(127), 128+random(127), 128+random(127))
	    for (var i = 0; i < count; i++) {
	        instance_create_depth(x + random_range(-16, 16), y + random_range(-16, 16),0, oBlood);
	    }
	}
	counter = 0
}
