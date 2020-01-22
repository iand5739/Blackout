transition("open",0)

image_alpha = 1
x_scale = image_xscale
y_scale = image_yscale
strech_scale = 2
hsp = 0
vsp = 0
grav = 0.4
walksp = 4.2
jumpht = 9
counter = 0

while (!place_meeting(x,y+1,obj_wall)){
	y += 1;
}

global.active = true