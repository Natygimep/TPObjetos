import Album.*
import mundoMusical.*
class Cancion {

<<<<<<< Updated upstream
const letra
const duracion
const titulo
const artista

constructor(unaLetra, unaDuracion, unTitulo, unArtista){
	letra = unaLetra
	duracion = unaDuracion
	titulo = unTitulo
	artista = unArtista
}
method letra() = letra
method duracion() = duracion
method titulo() = titulo
method artista() = artista
method esCorta(unaCancion) =  unaCancion.duracion() < 180

=======
	var letra
	var duracion
	var titulo

	constructor(unaLetra, unaDuracion, unTitulo){
		self.letra(unaLetra)
		self.duracion(unaDuracion)
		self.titulo(unTitulo)
	}
	
	method letra() = letra
	method letra(unaLetra) {
		 letra = unaLetra
	}

	method duracion() = duracion
	method duracion(unaDuracion){
		duracion = unaDuracion
	}
	
	method titulo() = titulo
	method titulo(unTitulo){
		titulo = unTitulo
	}
	method esCorta(unaCancion){
		return unaCancion.duracion() < 180
	}
>>>>>>> Stashed changes
}