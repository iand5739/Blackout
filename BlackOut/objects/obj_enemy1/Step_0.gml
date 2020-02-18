counter++

key_space = place_meeting(x,y,obj_jump)



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
if (place_meeting(x + hsp,y,obj_bounce)) {
	while (!place_meeting(x+sign(hsp),y,obj_bounce)){
		x += sign(hsp);
	}	
	hsp = hsp*-1
}

x += hsp;





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

/*
if (x != xprevious and counter > 6)
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
*/
