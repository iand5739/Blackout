image_alpha = 1
x_scale = image_xscale
y_scale = image_yscale
strech_scale = 2
hsp = 4
vsp = 0
grav = 0.4
walksp = 4.2
jumpht = 9
counter = 0

while (!place_meeting(x,y+1,obj_wall)){
	y += 1;
}

if (place_meeting(x,y,obj_bounce)) {hsp = 0}