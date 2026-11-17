#region ATRIBUTOS
xspd = 0;
yspd = 0;

moveSpd = 8; 

jump = -12;
grav = 0.5;

#endregion

// Musica: reinicia do comeco quando a fase comeca
audio_stop_all();
audio_play_sound(snd_musica, 1, true);

