image_xscale = random_range(0.6, 1.2);
image_yscale = image_xscale;
image_blend = global.blood_blend
image_alpha = 0

movDir = random(360);
movSpd = random_range(8, 20);

fric = random_range(movSpd / 8, movSpd / 2);

sizeChange = random_range(image_xscale / 10, image_xscale / 3); 