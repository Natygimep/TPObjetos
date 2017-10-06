import canciones.*
import mundoMusical.*

class Album {
	
	const titulo
	const canciones
	const artista
	const copiasLanzadas
	var copiasVendidas
	var fechaLanzamiento
	
	constructor(unTitulo, unArtista, unaListaDeCanciones, unasCopiasLanzadas, unasCopiasVendidas, unaFecha){
		titulo = unTitulo
		artista = unArtista
		canciones = unaListaDeCanciones
		copiasLanzadas = unasCopiasLanzadas
		self.copiasVendidas(unasCopiasVendidas)
		self.fechaLanzamiento(unaFecha)
		}
		
	method titulo() = titulo
	
	method artista() = artista
	
	method canciones() = canciones
	
	method copiasLanzadas() = copiasLanzadas

	method copiasVendidas() = copiasVendidas
	
	method copiasVendidas(unasCopiasVendidas){
		copiasVendidas = unasCopiasVendidas
	}
	
	method fechaLanzamiento() = fechaLanzamiento
	
	method fechaLanzamiento(unaFecha){
		fechaLanzamiento = unaFecha
	}

	method duracionTotalAlbum(){
		return self.canciones().sum({cancion => cancion.duracion()})
	}

	/*method cancionMasLarga(){
		return self.canciones().max({unaCancion => unaCancion.letra().size()})
	}*/
	
	method cancionMasLarga(unCriterio) {
		return self.canciones().max({unaCancion => unCriterio.esLaMayor(unaCancion)})
	}
	
	method tieneBuenasVentas(){
		return copiasVendidas / copiasLanzadas > 0.75 
	}

}

object compararPorLetra {
	method esLaMayor(unaCancion) = unaCancion.letra().size()
}
object compararPorSegundos {
	method esLaMayor(unaCancion) =	unaCancion.duracion()
}
object compararPorTitulo {
	method esLaMayor(unaCancion) = unaCancion.titulo().size()
}