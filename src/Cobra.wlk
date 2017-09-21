
class CobraPorTiempo {
	method cobra(horas) {
		return precio*horas
	}
}

class CobraPorLugar{
	
	method cobra(lugar) {
		if (lugar.esConcurrido()) {
			return 500
		}else
			return 400
	}
	
}