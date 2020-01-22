if (!place_meeting(x+32,y,obj_wall)) {instance_create_layer(x+32,y,"blackout",obj_draw_wall)}
if (!place_meeting(x-32,y,obj_wall)) {instance_create_layer(x-32,y,"blackout",obj_draw_wall)}

if (!place_meeting(x+32,y+32,obj_wall)) {instance_create_layer(x+32,y+32,"blackout",obj_draw_wall)}
if (!place_meeting(x-32,y+32,obj_wall)) {instance_create_layer(x-32,y+32,"blackout",obj_draw_wall)}
if (!place_meeting(x,y+32,obj_wall)) {instance_create_layer(x,y+32,"blackout",obj_draw_wall)}

if (!place_meeting(x+32,y-32,obj_wall)) {instance_create_layer(x+32,y-32,"blackout",obj_draw_wall)}
if (!place_meeting(x-32,y-32,obj_wall)) {instance_create_layer(x-32,y-32,"blackout",obj_draw_wall)}
if (!place_meeting(x,y-32,obj_wall)) {instance_create_layer(x,y-32,"blackout",obj_draw_wall)}