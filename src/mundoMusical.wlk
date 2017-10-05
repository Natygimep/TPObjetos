import Album.*

class Musico {
	var tipoDeMusico
	const albumes
	var banda = null
		
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
	
	method banda() = banda
	
	method banda(unaBanda) {
		banda = unaBanda
	}
	
	method perteneceUnaBanda() = self.banda() != null
	
	method albumes() = albumes
	
	method canciones() = self.albumes().flatMap({unAlbum => unAlbum.canciones()})
	
	method agregarAlbum(unAlbum) = self.albumes().add(unAlbum)	
	
	method habilidad() = self.tipoDeMusico().habilidades(self)
	
	method habilidad(unaHabilidad) = self.tipoDeMusico().habilidad(unaHabilidad)
	
	method cobra(presentacion) = self.tipoDeMusico().cobra(presentacion)
	method interpretaBien(cancion) = self.tipoDeMusico().interpretaBien(cancion)
	
	method esMinimalista() = self.canciones().all({cancion => cancion.esCorta()})
	
	method cancionesConLaPalabra(unaPalabra) = self.canciones().filter({unaCancion => unaCancion.letra().contains(unaPalabra)})
	
	method duracionObra() = self.albumes().sum({unAlbum => unAlbum.duracionTotalAlbum()})

	method laPego() = self.albumes().all({unAlbum => unAlbum.tieneBuenasVentas()})
}

class TipoDeMusico {
	var habilidad
	
	method habilidad() = habilidad
	method habilidad(unaHabilidad) {
		habilidad = unaHabilidad
	}

	
}

class TipoMusicoDeGrupo inherits TipoDeMusico {
	const aumentoDeHabilidad
	
	constructor(unAumentoDeHabilidad){
		aumentoDeHabilidad = unAumentoDeHabilidad
	}
	
	method aumentoDeHabilidad() = aumentoDeHabilidad
		
	method cobra(presentacion) = if (presentacion.tocaSolo()) 100 else 50	
	
	method interpretaBien(cancion) = (cancion.duracion() > 300)
	
	method habilidades(unaPersona) {
		if(unaPersona.perteneceUnaBanda()){
			return unaPersona.tipoDeMusico().habilidad() + self.aumentoDeHabilidad()
		} 
		else 
		{
			return unaPersona.tipoDeMusico().habilidad()
		}
	}
}

class TipoMusicoSolista inherits TipoDeMusico {
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
	
	method habilidades(unaPersona) = if(unaPersona.perteneceUnaBanda()){
			return unaPersona.tipoDeMusico().habilidad() - 20
		} 
		else 
		{
			return unaPersona.tipoDeMusico().habilidad()
		}
}

class TipoMusicoReCapo inherits TipoDeMusico{
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
	
	method habilidades(unaPersona) = (self.guitarra().valor() * 8).min(100)

} 