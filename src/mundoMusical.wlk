class Musico {
	var habilidad
	
	constructor(unaHabilidad){
		self.habilidad(unaHabilidad)
	}
	
	method habilidad() = habilidad
	
	method habilidad(nuevaHabilidad) {
		habilidad = nuevaHabilidad
	}
	method aumentarHabilidad(nuevaHabilidad){
		self.habilidad(self.habilidad()+nuevaHabilidad)
	}
}

class MusicoDeGrupo inherits Musico {
	
	constructor(unaHabilidad, unAumentoDeHabilidad) = self(unaHabilidad){
		self.aumentarHabilidad(unAumentoDeHabilidad)
	}
	method esSolista() = return false
	
	method cobra(_) {
		if (self.esSolista()) 
		{ 
			return 100
		}
		else
		{
			return 50
		}
	}

}

class MusicoSolista inherits Musico{
	var palabra
	
	constructor(unaHabilidad, unaPalabra) = self(unaHabilidad){
		self.palabra(unaPalabra)
	}
	
	method palabra(unaPalabra){
		palabra = unaPalabra
	}
	method palabra() = palabra
	
	method esSolista() = return true
	
	method cobra(lugar) {
		if (lugar.esConcurrido()) {
			return 500
		}else
			return 400
	}
	
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