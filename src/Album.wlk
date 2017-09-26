import canciones.*
import mundoMusical.*

class Album {
	const titulo
	const canciones
	const artista
	const copiasLanzadas
	var copiasVendidas
	var fechaLanzamiento
	
<<<<<<< Updated upstream
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


=======
	constructor(unTitulo, unArtista, unaListaDeCanciones, unasCopiasEditadas, unasCopiasVendidas, unaFecha){
		self.titulo(unTitulo)
		self.artista(unArtista)
		self.canciones(unaListaDeCanciones)
		self.copiasEditadas(unasCopiasEditadas)
		self.copiasVendidas(unasCopiasVendidas)
		self.fechaLanzamiento(unaFecha)
	}
	
	method titulo() = titulo
	method titulo(unTitulo){
		titulo = unTitulo
	}

	method artista() = artista
	method artista(unArtista){
		artista = unArtista
	}
	
	method canciones() = canciones
	method canciones(unaListaDeCanciones){
		canciones = unaListaDeCanciones
	}	
	
	method copiasEditadas() = copiasEditadas
	method copiasEditadas(unasCopiasEditadas){
		copiasEditadas = unasCopiasEditadas
	}
	
	method copiasVendidas() = copiasVendidas
	method copiasVendidas(unasCopiasVendidas){
		copiasVendidas = unasCopiasVendidas
	}
	
	method fechaLanzamiento() = fechaLanzamiento
	method fechaLanzamiento(unaFecha){
		fechaLanzamiento = unaFecha
	}
>>>>>>> Stashed changes
}