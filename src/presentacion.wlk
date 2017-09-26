
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
	method fehca() = fecha
	method musicosQueTocan() = musicosQueTocan
	
	method tocaSolo(unMusico) =	self.musicosQueTocan().contains(unMusico)
	
}