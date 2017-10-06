import Album.*
import mundoMusical.*

class Cancion {

	const letra
	const duracion
	const titulo
	const artista

	constructor(unTitulo, unaDuracion, unArtista, unaLetra){
		letra = unaLetra
		duracion = unaDuracion
		titulo = unTitulo
		artista = unArtista
	}
	
	method letra() = letra
	
	method duracion() = duracion
	
	method titulo() = titulo
	
	method artista() = artista
	
	method esCorta() =  self.duracion() < 180

}