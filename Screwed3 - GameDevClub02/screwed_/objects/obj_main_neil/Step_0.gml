if (place_meeting(x, y - 4, obj_player2))
{
	if(action)
	{
		// toca o som uma vez quando o parafuso comeca a afundar
		if (!sinking && y < ystart + 64)
		{
			audio_play_sound(snd_bounce, 1, false);
			sinking = true;
		}
		y = max(y +4, ystart +64)
		if(y>=ystart+64 && !screwedBefore)
		{
			global.justNeiled -= 1;
			screwedBefore = true;
		}
		action= false
	}
}
if (!(place_meeting(x, y - 4, obj_player2) && obj_player2.spinMode))
	sinking = false;



/*
if (justScrewed && !screwedBefore)
{
	obj_screw_manager.screwsLeft -= 1;
	screwedBefore = true;
}