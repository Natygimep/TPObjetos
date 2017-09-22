class Musico {
	var habilidad
	var esSolista = true
		
	constructor(){}
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
	method disminuirHabilidad(nuevaHabilidad){
		self.aumentarHabilidad(-nuevaHabilidad)
	}
	method esSolista() = return esSolista
	method esSolista(unBooleano) {
		esSolista = unBooleano
	}
	method tocaEnGrupo(){
		self.esSolista(false)
	}
}

class MusicoDeGrupo inherits Musico {
	const aumentoDeHabilidad
	
	constructor(unaHabilidad, unAumentoDeHabilidad) = self(unaHabilidad){
		aumentoDeHabilidad = unAumentoDeHabilidad
	}
	
	method aumentoDeHabilidad() = aumentoDeHabilidad
		
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
	
	method interpretaBien(cancion) = (cancion.duracion() > 300)
	
	override method tocaEnGrupo(){
		self.esSolista(false)  // si alguno se acuerda como heredar comportamiento del metodo de clase musico para evitar repetir esto
		self.aumentarHabilidad(self.aumentoDeHabilidad())
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
	
	method cobra(lugar) {
		if (lugar.esConcurrido()) {
			return 500
		}else
			return 400
	}
	
	method interpretaBien(cancion) = (cancion.letra().contains(self.palabra()))
	
	override method tocaEnGrupo(){
		self.esSolista(false) // si alguno se acuerda como heredar comportamiento del metodo de clase musico para evitar repetir esto
		self.disminuirHabilidad(20)
	}
	
}

object luisAlberto inherits Musico{
	method interpretaBien(cancion) = true
	
	method cobra(fecha){
	const fechaTope = new Date(1,9,2017)
		if (fecha>=fechaTope)
		{
			return 1200
		}else{
			return 1000
		}
	}
}
// Canciones


// Lugares donde tocan los músicos 

class Lugar {
	var capacidad
	
	constructor (unaCapacidad) {
		self.capacidad(unaCapacidad)
	}
	
	method capacidad() = return capacidad
	method capacidad(unaCapacidad){
		capacidad = unaCapacidad
	}
	
	method esConcurrido() = self.capacidad() > 5000
}

object lunaPark {
	
	method esConcurrido() = self.capacidad() > 5000 // cuando creemos las clases este methodo va a provenir de ahi
	
	method capacidad() = 9290
	
	}
	


object laTrastienda {
	
	method esConcurrido() = self.capacidad() > 5000
	
	method capacidad() =  400
	
	method capacidad(unaFecha) {
		
		if (unaFecha.dayOfWeek() == 6)
		{
		    return 700
		}
	    else 
	    {
	    	return 400  
	    }
	    
	    }
}


/*const albumParaLosArboles = [cisne,almaDeDiamante]
	const albumJustCrisantemo = [crisantemo]
	
	
//method apareceEn(palabra) = self.todasLasCanciones().filter({cancion => cancion.letra().contains(palabra)}) // Este método tiene problemas con las letras Mayúsculas y minúsculas
}



 */