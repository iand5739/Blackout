if (global.surf_exists == 1)
	{
		var count = random_range(48, 50);
		global.blood_blend = make_colour_rgb(128+random(127), 128+random(127), 128+random(127))
	    for (var i = 0; i < count; i++) {
	        instance_create_depth(obj_player.x + random_range(-16, 16), obj_player.y + random_range(-16, 16),0, oBlood2);
	    }
	}

obj_player.image_alpha = 0
global.active = false
global.alive = false
transition("clopen",0)