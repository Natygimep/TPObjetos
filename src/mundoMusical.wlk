object joaquin {
	
	var habilidad = 20
	var cantaSolo = true			//Recontra turbio pero fue.
	
	method habilidad() { 			//Esto esta medio turbio pero no se me ocurre de otra manera.
		if(cantaSolo){
			return habilidad
		}
		else{
			return (habilidad + 5)
		}
	} 
	
	method cantaEnGrupo() {			//Esto es aún mas turbio. 
			cantaSolo = false
		}
	
	method interpretaBien(cancion) = (cancion.duracion() > 300)
	
	method banda() = "Pimpinela"
		
}

object lucia {
	var habilidad = 70
	var dineroCobrado = 0
	var cantaSolo = true		//Seguimos con lo turbio.
	
	method habilidad() {
		if(cantaSolo){
		return habilidad 
		}
		else {
			return (habilidad - 20)
		}
	}
	method cantaEnGrupo() {			//Esto es aún mas turbio. 
			cantaSolo = false
		}
	
	method banda() = "Pimpinela"
	
	method interpretaBien(cancion) = (cancion.letra().contains("familia"))
	
	method lugarConcurrido(lugar) = (lugar.capacidad() > 5000) 					// no funciona con la trastienda(Arreglar)
	
	method cobra(lugar){
		if (self.lugarConcurrido(lugar)){
			dineroCobrado += 500
		}
		else{
			dineroCobrado += 400
		}
	}
	
	method dineroCobrado() = dineroCobrado  
}

object luisAlberto {
	
	method habilidad(guitarra) = (guitarra.valor() * 8)
	
	method interpretaBien(cancion){								//Hay que preguntar si se puede hacer de otra forma menos hardcodeada 
		return true
	}
}

object fender{

	method valor() = 10
}
object gibson{
		
	//method valor() = valor
	
}
object cisne {
	
	
	method letra() = "Hoy el viento se abrió quedó vacío el aire una vez más y el manantial brotó y nadie está aquí y puedo ver que solo estallan las hojas al brillar"
	
	method duracion() = 312
	
}

object laFamilia {
	
	method letra() = "Quiero brindar por mi gente sencilla, por el amor brindo por la familia"
	
	
	method duracion() = 264
	
}

object lunaPark {
	
	method capacidad() = 9290
	
}

object laTrastienda {
	
	method capacidad() = 400
	
	method capacidadPrimerPiso() = 300 // únicamente los sabados.
	
}













