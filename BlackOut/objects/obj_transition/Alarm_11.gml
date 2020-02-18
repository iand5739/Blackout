global.alive = true

with (oControllerBlood)
{
	event_perform(ev_create, 0);
}

with (obj_player)
{
	event_perform(ev_create, 0);
}

room_restart()