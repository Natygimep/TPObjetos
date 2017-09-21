
class InterpretaBienPorTiempo {

 method interpretaBien(cancion) = (cancion.duracion() > 300)

}

class InterpretaBienPorPalabra{
	method interpretaBien(cancion) = (cancion.letra().contains(palabra))
}

