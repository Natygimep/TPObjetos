class Musico {
	var habilidad
	var precio 
	const palabra
	
	
	constructor() {
		
	}
	constructor(unaHabilidad){
		self.habilidad(unaHabilidad)
	}
	constructor(unaHabilidad, unPrecio) = self(unaHabilidad){
		self.precio(unPrecio)
	}
	constructor(unaHabilidad, unAumentoDeHabilidad, unPrecio) = self(unaHabilidad,unAumentoDeHabilidad){
		self.precio(unPrecio)
	}
	
	method precio() = precio
	
	method precio(nuevoPrecio) {
		precio = nuevoPrecio
	}
	
	method habilidad() = habilidad
	
	method habilidad(nuevaHabilidad) {
		habilidad = nuevaHabilidad
	}
	
	method aumentaHabilidad(unAumentoDeHabilidad) {
		self.habilidad(self.habilidad()+unAumentoDeHabilidad)
	}


// Canciones


// Lugares donde tocan los músicos 

object lunaPark {
	
	method esConcurrido() = self.capacidad() > 5000 // cuando creemos las clases este methodo va a provenir de ahi
	
	method capacidad() = 9290
	
	}
	


object laTrastienda {
	
	method esConcurrido() = self.capacidad() > 5000
	
	method capacidad() =  400
	
	method capacidad(unaFecha) {
		
		if (unaFecha.dayOfWeek() == 6)
		    return 700
	    else return 400  
	    }
	    
	
}


/*const albumParaLosArboles = [cisne,almaDeDiamante]
	const albumJustCrisantemo = [crisantemo]
	
	
//method apareceEn(palabra) = self.todasLasCanciones().filter({cancion => cancion.letra().contains(palabra)}) // Este método tiene problemas con las letras Mayúsculas y minúsculas
}



 * 
 */