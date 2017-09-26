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

/*method duracionTotalAlbum(){
	return self.canciones().sum({cancion => cancion.duracion()})
}*/
method duracionTotalAlbum(){
	return 100
}


}