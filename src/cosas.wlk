object castillo {
	var nivelDeDefensa = 150
	
	method altura() = 20
	
	method nivelDeDefensa() = nivelDeDefensa
	
	method recibirAtaque(unValor){
		nivelDeDefensa = 0.max(nivelDeDefensa - unValor)
	}
	
	method valorTrabajo(){
		return nivelDeDefensa * 0.2
	}
	
	method recibirTrabajo(){
		nivelDeDefensa = 200.min(nivelDeDefensa + 20)
	}
	
}

object aurora{
	var estaViva = true
	
	method altura() = 1
	
	method estaViva() = estaViva
	
	method recibirAtaque(unValor){
		estaViva = not(unValor >=10)
	}
	
	method valorTrabajo() =15
	
	method recibirTrabajo(){}
	
}

object tipa{
	var altura = 8
	
	method altura() = altura
	
	method recibirAtaque(unValor){}
	
	method valorTrabajo(){
		return altura * 2
	}
	
	method recibirTrabajo(){
		altura += 1
	}
}

