import Album.*

class Musico {
	var habilidad
	var tipoDeMusico
	const albumes
		
	constructor(unTipoDeMusico, unosAlbumes){
		self.tipoDeMusico(unTipoDeMusico)
		albumes = unosAlbumes
	}
	constructor(unTipoDeMusico, unosAlbumes, unaHabilidad) = self(unTipoDeMusico, unosAlbumes){
		self.habilidad(unaHabilidad)
	}
	
	method tipoDeMusico() = tipoDeMusico
	method tipoDeMusico(unTipo){
		tipoDeMusico = unTipo
	}
	method albumes() = albumes
	
	method canciones() = self.albumes().flatMap({unAlbum => unAlbum.canciones()})
	
	method agregarAlbum(unAlbum) = self.albumes().add(unAlbum)	
	
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
	method cobra(presentacion) = self.tipoDeMusico().cobra(presentacion)
	method interpretaBien(cancion) = self.tipoDeMusico().interpretaBien(cancion)
	
	method esMinimalista() = self.canciones().all({cancion => cancion.esCorta()})
	
	method cancionesConLaPalabra(unaPalabra) = self.canciones().filter({unaCancion => unaCancion.letra().contains(unaPalabra)})
	
	method duracionObra() = self.albumes().sum({unAlbum => unAlbum.duracionTotalAlbum()})

	method laPego() = self.albumes().all({unAlbum => unAlbum.tieneBuenasVentas()})
}

class TipoMusicoDeGrupo{
	const aumentoDeHabilidad
	
	constructor(unAumentoDeHabilidad){
		aumentoDeHabilidad = unAumentoDeHabilidad
	}
	
	method aumentoDeHabilidad() = aumentoDeHabilidad
		
	method cobra(presentacion) = if (presentacion.tocaSolo(self)) 100 else 50	
	
	method interpretaBien(cancion) = (cancion.duracion() > 300)


}

class TipoMusicoSolista{
	var palabra
	
	constructor(unaPalabra) {
		self.palabra(unaPalabra)
	}
	
	method palabra(unaPalabra){
		palabra = unaPalabra
	}
	method palabra() = palabra
	
	method cobra(presentacion) = if (presentacion.lugar().esConcurrido()) 500 else 400
	
	method interpretaBien(cancion) = (cancion.letra().contains(self.palabra()))
	
	
}

class TipoMusicoReCapo {
	var guitarra
	
	constructor (unaGuitarra){
		self.guitarra(unaGuitarra)
	}
	
	method guitarra() = guitarra
	method guitarra(unaGuitarra){
		guitarra=unaGuitarra
	}
	method interpretaBien(cancion) = true
	
	method cobra(presentacion) = if(presentacion.fecha() >= new Date(1,9,2017) ) 1200 else 1000
	
	method habilidad() = 8*self.guitarra().valor().min(100)

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
	method capacidad(unaFecha) = if (unaFecha.dayOfWeek() == 6) 700 else 400
}


/*const albumParaLosArboles = [cisne,almaDeDiamante]
	const albumJustCrisantemo = [crisantemo]
	
	
//method apareceEn(palabra) = self.todasLasCanciones().filter({cancion => cancion.letra().contains(palabra)}) // Este método tiene problemas con las letras Mayúsculas y minúsculas
}



 */