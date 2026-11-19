var _direcao = keyboard_check(vk_right) - keyboard_check(vk_left);
var _pular = keyboard_check_pressed(vk_up);
var _atacar = keyboard_check_pressed(vk_down);
var _no_chao = yspd >= 0 && place_meeting(x, y + 1, obstaculos);

if (!spinMode && _no_chao && _atacar)
{

    spinMode = true;
}
if (sprite_index == spr_player2_attack && floor(image_index) == 2)
	obj_main_neil.action=true;

xspd = 0;

if (!spinMode)
{
    xspd = _direcao * moveSpd;

    if (_direcao != 0)
    {
        image_xscale = _direcao * escala_x_base;
    }
}

if (_no_chao)
{
    yspd = 0;

    if (!spinMode && _pular)
    {
        yspd = jump;
        audio_play_sound(snd_jump2, 1, false);
    }
}
else
{
    yspd += grav;
}

if (xspd != 0)
{
    move_and_collide(xspd, 0, obstaculos, 4, 0, 0, abs(xspd), 0);
}

if (yspd != 0)
{
    var _colisoes = move_and_collide(
        0, yspd, obstaculos, 4, 0, 0, 0, abs(yspd)
    );

    if (array_length(_colisoes) > 0)
    {
        yspd = 0;
    }
}

_no_chao = yspd >= 0 && place_meeting(x, y + 1, obstaculos);

var _sprite = spr_player2_idle;

if (spinMode)
{
    _sprite = spr_player2_attack;
}
else if (!_no_chao)
{
    _sprite = spr_player2_jump;
}
else if (xspd != 0)
{
    _sprite = spr_player2_walk;
}

if (sprite_index != _sprite)
{
    sprite_index = _sprite;
    image_index = 0;
    image_speed = 1;
}