object mundoMusical {
	var musicos = []  // me marcaba error por eso lo cambie a VAR
	var habilidad = 0 // me marcaba error por eso lo cambie a VAR
	var costo = 0 // me tiraba error si no lo inicializaba 
	
	method musicos() = musicos
	method musicos(nuevoMusico) {
		musicos = nuevoMusico
	}
	
	method habilidad() = habilidad
	method habilidad(nuevaHabilidad) {
		habilidad = nuevaHabilidad
	}
/* 	  lo comente porque me tiraba error en mi IDE de wollok
	method ejecutaBien ()= []
	method ejecutaBien () {
		ejecutaBien
	}
*/	
	method costo() = costo
	method costo(nuevoCosto) {
		costo = nuevoCosto
	}
	
}

object joaquin {
	
	var habilidad = 20
	
	method habilidad() = habilidad
	method habilidad(nuevaHabilidad){
		habilidad = nuevaHabilidad
	}
	
	method interpretaBien(cancion) = (cancion.duracion() > 300)
	
	method banda() = "Pimpinela"
		
}

object lucia {
	
	var habilidad = 70
	
	method habilidad() = habilidad
	method habilidad(nuevaHabilidad){
		habilidad = nuevaHabilidad
	}
	
	method banda() = "Pimpinela"
	
	method interpretaBien(cancion) = (cancion.letra().contains("familia"))
	
	method lugarConcurrido(lugar) = (lugar.capacidad() > 5000) // no funciona con la trastienda(Arreglar)
	
}

object luisAlberto {
	
	method habilidad(guitarra) = (guitarra.valor() * 8)
}

object fender{
	
	method valor() = 10
}
object cisne {
	
	
	method letra() = "Hoy" // hay que poner toda la letra del tema :/
	
	
	method duracion() = 312
	
}

object laFamilia {
	
	method letra() = "la blabla de la familia" // hay que poner toda la letra del tema :/
	
	
	method duracion() = 264
	
}

object lunaPark {
	
	method capacidad() = 9290
	
}

object laTrastienda {
	
	method capacidadPlantaBaja() = 400
	method capacidadPrimerPiso() = 300 // �nicamente los sabado.
	
}













