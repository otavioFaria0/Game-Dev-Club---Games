if(global.justScrewed <= 0 && global.justNeiled <= 0 && !opendoor)
{
	// toca o som uma vez quando o portao comeca a abrir
//	if (!opendoor)
//	{
		audio_play_sound(snd_portao, 1,false);
		opendoor = true;
//	}

	
}
if(opendoor)
	y = max(y+8, yStart-384);