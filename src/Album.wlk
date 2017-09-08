
class Album {

method albumParaLosArboles() = albumParaLosArboles
	
	method albumJustCrisantemo() = albumJustCrisantemo
	
	method duracionAlbumParaLosArboles() = self.albumParaLosArboles().sum({cancion => cancion.duracion()})
		
	method duracionAlbumJustCrisantemo() = self.albumJustCrisantemo().sum({cancion => cancion.duracion()})
	
	method duracionObra() = (self.duracionAlbumParaLosArboles())+(self.duracionAlbumJustCrisantemo())
	
	method todasLasCanciones() = albumParaLosArboles + albumJustCrisantemo 
	
	method esMinimalista() = self.todasLasCanciones().all({cancion => cancion.duracion() < 180})
	
	method cancionMasLargaDeAlbumParaLosArboles() = self.albumParaLosArboles().max({cancion => cancion.longitudDeLetra()}) // si lo se que es feo, pero bueno funciona jeje
	
	method cancionMasLargaDeAlbumJustCrisantemo() = self.albumJustCrisantemo().max({cancion => cancion.longitudDeLetra()}) // lo msimo que arriba jaja


}