
class Presentacion {
	const lugar
	const fecha
	const musicosQueTocan
	
	constructor (unLugar, unaFecha, unosMusicos){
		lugar = unLugar
		fecha = unaFecha
		musicosQueTocan = unosMusicos
	}
	
	method lugar() = lugar
	method fecha() = fecha
	method musicosQueTocan() = musicosQueTocan
	
	method tocaSolo() =	self.musicosQueTocan().size() == 1 // no se si sera la forma mas efefctiva de hacerlo
	
	method costo() = self.musicosQueTocan().sum({unMusico => unMusico.cobra(self)})
	
}

class Lugar {
	const capacidad
	
	constructor (unaCapacidad) {
		capacidad = unaCapacidad
	}
	
	method capacidad() = capacidad
	method esConcurrido() = self.capacidad() > 5000
}

object laTrastienda inherits Lugar(400){
	method capacidad(unaFecha) = if (unaFecha.dayOfWeek() == 6) 700 else 400
}