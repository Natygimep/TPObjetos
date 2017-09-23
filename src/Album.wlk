import canciones.*
import mundoMusical.*

class Album {
	var titulo
	var canciones
	var artista
	var copiasEditadas
	var copiasVendidas
	var fechaLanzamiento
	var todasLasCanciones
	
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
method cancionesDeUnArtista(unArtista){
  todasLasCanciones = unArtista.canciones()
  return todasLasCanciones
	}
}