
class Cancion {

var letra
var duracion
var album

constructor(unaLetra, unaDuracion, unAlbum){
	self.letra(unaLetra)
	self.duracion(unaDuracion)
	self.album(unAlbum)
}
method letra() = letra
method letra(unaLetra) {
	 letra = unaLetra
}
method duracion() = duracion
method duracion(unaDuracion){
	duracion = unaDuracion
}
method album() = album
method album(unAlbum){
	album = unAlbum
}
}