class Musico {
	var habilidad
	var aumentoDeHabilidad
	var precio 
	
	constructor() {
		
	}
	constructor(unaHabilidad){
		self.habilidad(unaHabilidad)
	}
	constructor(unaHabilidad, unAumentoDeHabilidad, unPrecio){
		self.habilidad(unaHabilidad)
		self.aumentaHabilidad(unAumentoDeHabilidad)
		self.precio(unPrecio)
	}
	constructor(unaHabilidad, unPrecio){
		self.habilidad(unaHabilidad)
		self.precio(unPrecio)
	}
	
	method precio() = precio
	
	method precio(nuevoPrecio) {
		precio = nuevoPrecio
	}
	
	method habilidad() = habilidad
	
	method habilidad(nuevaHabilidad) {
		habilidad = nuevaHabilidad
	}
	
	method aumentaHabilidad(unAumentoDeHabilidad) {
		self.habilidad(self.habilidad()+unAumentoDeHabilidad)
	}
	
	method interpretaBien(cancion) = (cancion.duracion() > 300)
	
	method cobra(horas) {
		return precio*horas
	}
	const palabra
	
	method interpretaBien(cancion) = (cancion.letra().contains(palabra))
	
	method cobra(lugar) {
		if (lugar.esConcurrido()) {
			return 500
		}else{
			return 400
		}
	}
	
}

// Canciones

object cisne {
	
	method letra() = "Hoy el viento se abrió quedó vacío el aire una vez más y el manantial brotó y nadie está aquí y puedo ver que solo estallan las hojas al brillar"
	
	method duracion() = 312
	
	method longitudDeLetra() = self.letra().size()
}

object laFamilia {
	
	method letra() = "Quiero brindar por mi gente sencilla, por el amor brindo por la familia"
	
	method duracion() = 264
	
	method longitudDeLetra() = self.letra().size()
}


// Lugares donde tocan los músicos 

object lunaPark {
	
	method esConcurrido() = self.capacidad() > 5000 // cuando creemos las clases este methodo va a provenir de ahi
	
	method capacidad() = 9290
	
	}
	


object laTrastienda {
	
	method esConcurrido() = self.capacidad() > 5000
	
	method capacidad() =  400
	
	method capacidad(unaFecha) {
		
		if (unaFecha.dayOfWeek() == 6)
		    return 700
	    else return 400  
	    }
	    
	
}


/*const albumParaLosArboles = [cisne,almaDeDiamante]
	const albumJustCrisantemo = [crisantemo]
	
	
object eres{
	
	method letra() = "Eres lo mejor que me pasó en la vida, no tengo duda, no habrá más nada después de ti. Eres lo que le dio brillo al día a día, y así será por siempre, no cambiará, hasta el final de mis días"
	
	method duracion() = 145
	
	method longitudDeLetra() = self.letra().size()
}

object corazonAmericano{
	
	method letra() = "Canta corazón, canta más alto, que tu pena al fin se va marchando, el nuevo milenio ha de encontrarnos, junto corazón, como soñamos"
	
	method duracion() = 154
	
	method longitudDeLetra() = self.letra().size()
}

object almaDeDiamante{
	
	method letra() = "Ven a mí con tu dulce luz alma de diamante. Y aunque el sol se nuble después sos alma de diamante. Cielo o piel silencio o verdad sos alma de diamante. Por eso ven así con la humanidad alma de diamante"
	
	method duracion() = 216
	
	method longitudDeLetra() = self.letra().size()
}

object crisantemo{
	
	method letra() = "Tócame junto a esta pared, yo quede por aquí... cuando no hubo más luz... quiero mirar a través de mi piel... Crisantemo, que se abrió... encuentra el camino hacia el cielo"
	
	method duracion() = 175
	
	method longitudDeLetra() = self.letra().size()
}


object kike{
	
	var habilidad = 70
	
	method habilidad() = habilidad
	
	method nuevaHabilidad(nuevaHabilidad){
		habilidad = nuevaHabilidad
	}
}

object soledad{
	
	var habilidad = 55
	
	method habilidad() = habilidad
	
	method nuevaHabilidad(nuevaHabilidad){
		habilidad = nuevaHabilidad
	}
}

 * 
 */









