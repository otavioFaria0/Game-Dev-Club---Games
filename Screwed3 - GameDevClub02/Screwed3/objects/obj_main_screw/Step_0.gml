if (place_meeting(x, y - 4, obj_player))
{
	if(obj_player.spinMode)
	{
		// toca o som uma vez quando o parafuso comeca a afundar
		if (!sinking && y < ystart + 64)
		{
			audio_play_sound(snd_bounce, 1, false);
			sinking = true;
		}
		y = min(y +4, ystart +64)
		if(y>=ystart+64 && !screwedBefore)
		{
			global.justScrewed -= 1;
			screwedBefore = true;
		}

	}
}
if (!(place_meeting(x, y - 4, obj_player) && obj_player.spinMode))
	sinking = false;

/*
if (justScrewed && !screwedBefore)
{
	obj_screw_manager.screwsLeft -= 1;
	screwedBefore = true;
}