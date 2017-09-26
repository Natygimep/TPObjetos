class Musico {
	var habilidad
	var esSolista = true
	var tipoDeMusico
		
	constructor(){}
	constructor(unaHabilidad){
		self.habilidad(unaHabilidad)
	}
	
	method tipoDeMusico() = tipoDeMusico
	method tipoDeMusico(unTipo){
		tipoDeMusico = unTipo
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
	method cobra() = tipoDeMusico.cobra()
	method interpretaBien(cancion) = tipoDeMusico.interpretaBien(cancion)
	
	/*method esMinimalista(unArtista){
		unArtista.
	}*/
}

class MusicoDeGrupo{
	const aumentoDeHabilidad
	
	constructor(unAumentoDeHabilidad){
		aumentoDeHabilidad = unAumentoDeHabilidad
	}
	
	method aumentoDeHabilidad() = aumentoDeHabilidad
		
	method cobra(musico) = if (musico.esSolista()) 100 else 50	
	
	method interpretaBien(cancion) = (cancion.duracion() > 300)
	
	method tocaEnGrupo(musico){
		musico.esSolista(false)  // si alguno se acuerda como heredar comportamiento del metodo de clase musico para evitar repetir esto
		musico.aumentarHabilidad(self.aumentoDeHabilidad())
	}

}

class MusicoSolista{
	var palabra
	
	constructor(unaPalabra) {
		self.palabra(unaPalabra)
	}
	
	method palabra(unaPalabra){
		palabra = unaPalabra
	}
	method palabra() = palabra
	
	method cobra(lugar) = if (lugar.esConcurrido()) 500 else 400
	
	method interpretaBien(cancion) = (cancion.letra().contains(self.palabra()))
	
	method tocaEnGrupo(musico){
		musico.esSolista(false) // si alguno se acuerda como heredar comportamiento del metodo de clase musico para evitar repetir esto
		musico.disminuirHabilidad(20)
	}
	
}

object luisAlberto inherits Musico{
	var guitarra
	
	method guitarra() = guitarra
	method guitarra(unaGuitarra){
		guitarra=unaGuitarra
	}
	method interpretaBien(cancion) = true
	
	method cobra(fecha) = if(fecha >= new Date(1,9,2017) ) 1200 else 1000
	
	override method habilidad() = 8*self.guitarra().valor().min(100)
	
}



// Lugares donde tocan los músicos 

class Lugar {
	const capacidad
	
	constructor (unaCapacidad) {
		capacidad = unaCapacidad
	}
	
	method capacidad() = capacidad
	method esConcurrido() = self.capacidad() > 5000
}

object laTrastienda inherits Lugar(400){
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