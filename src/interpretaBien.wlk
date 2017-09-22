
class InterpretaBienPorTiempo {

 method interpretaBien(cancion) = (cancion.duracion() > 300)

}

class InterpretaBienPorPalabra{
	var palabra
	
	constructor(unaPalabra){
		self.palabra(unaPalabra)
	}
	method palabra() = palabra
	method palabra(unaPalabra){
		palabra = unaPalabra
	}
	method interpretaBien(cancion) = (cancion.letra().contains(palabra))
}

