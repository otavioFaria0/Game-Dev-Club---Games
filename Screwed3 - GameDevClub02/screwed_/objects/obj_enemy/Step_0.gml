//descobre a direção do jogador
var _dir= sign(obj_player.x - x);//a função retorna 1 para direita, -1 para esquerda(no caso a direção do jogador)

//move em direção ao jogador
if(instance_exists(obj_player)){
	x += _dir *xvlc;
}

//verifica se tem parede

