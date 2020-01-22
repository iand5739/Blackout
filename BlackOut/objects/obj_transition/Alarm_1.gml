if (room_exists(room_next(room))) 
{
	room_goto_next();
}
else
{
	show_message("LAST ROOM")
}