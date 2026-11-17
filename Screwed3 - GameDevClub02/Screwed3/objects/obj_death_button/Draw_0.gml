draw_self()

var _meio_x = room_width/2;
var _meio_y = room_height/2;


draw_set_halign(fa_center);
draw_set_font(fn_pixel_big);
draw_set_colour(#141A2B);
draw_text(_meio_x,_meio_y - 128,"VOCÊ MORREU");
draw_set_halign(-1);
draw_set_font(-1);
draw_set_colour(-1);

draw_sprite_ext(spr_player_idle,0,_meio_x + 12,_meio_y,2,2,90,c_white,1)
