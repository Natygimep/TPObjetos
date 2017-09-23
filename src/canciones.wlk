import Album.*
import mundoMusical.*
class Cancion {

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

}