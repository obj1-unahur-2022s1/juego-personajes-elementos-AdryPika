import cosas.*
import armas.*

object luisa {
	var jugadorActivo
	
	method jugadorActivo(unJugador){
		jugadorActivo = unJugador
	}
	
	method encontrar(elemento){
		
	}
	
}

object floki{
	var arma = ballesta
	
	method encontrar (elemento){
		if (arma.estaCargada()){
			elemento.recibirAtaque(arma.nivelDePotencia())
		} arma.usar()
	}
	
	method cambiarArma(unArma){
		arma = unArma
	}
}

object mario {
	var valorRecolectado = 0
	var ultimoElemento
	
	method encontrar (elemento){
		ultimoElemento = elemento
		valorRecolectado  += elemento.valorTrabajo()
		elemento.recibirTrabajo()
	}
	
	method estaFeliz(){
		return valorRecolectado >= 50 or ultimoElemento.altura() >= 10
	}
	
	method valorRecolectado() {return  valorRecolectado}
	
}
