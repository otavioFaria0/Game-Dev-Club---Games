#region screw / attack
var _attack = keyboard_check_pressed(ord("S"))  || keyboard_check_pressed(vk_down);
if (spinMode)
	sprite_index = spr_player_attack;

#endregion

#region movement
var _left = keyboard_check(ord("A"));
var _right = keyboard_check(ord("D"));
var _jump = keyboard_check_pressed(ord("W"));

//if (spinMode)
//	 xspd = 0;
//else 
	xspd = (_right - _left) * moveSpd;

yspd += grav;

if (place_meeting(x, y + 4, [obj_solid, obj_main_screw]))
{
	image_speed =1
    yspd = 0
    if (_jump)
	{
        yspd = jump;
		audio_play_sound(snd_jump, 1, false);
	}
	
	if (_attack)
	{
		spinMode = true;
	}
	if (!spinMode)
	{
		if (xspd != 0) sprite_index = spr_player_walk; 
		else sprite_index = spr_player_idle; 
	}
} 
else if (sprite_index != spr_player_attack)
	sprite_index = spr_player_jump; 
if (xspd != 0) 
	image_xscale = (_right - _left);

move_and_collide(xspd, yspd, [obj_solid, ending_wall, obj_main_screw]);
#endregion