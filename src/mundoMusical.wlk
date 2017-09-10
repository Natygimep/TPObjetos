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
	
	method letra() = "Hoy el viento se abri� qued� vac�o el aire una vez m�s y el manantial brot� y nadie est� aqu� y puedo ver que solo estallan las hojas al brillar"
	
	method duracion() = 312
	
	method longitudDeLetra() = self.letra().size()
}

object laFamilia {
	
	method letra() = "Quiero brindar por mi gente sencilla, por el amor brindo por la familia"
	
	method duracion() = 264
	
	method longitudDeLetra() = self.letra().size()
}


// Lugares donde tocan los m�sicos 

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
	
	method letra() = "Eres lo mejor que me pas� en la vida, no tengo duda, no habr� m�s nada despu�s de ti. Eres lo que le dio brillo al d�a a d�a, y as� ser� por siempre, no cambiar�, hasta el final de mis d�as"
	
	method duracion() = 145
	
	method longitudDeLetra() = self.letra().size()
}

object corazonAmericano{
	
	method letra() = "Canta coraz�n, canta m�s alto, que tu pena al fin se va marchando, el nuevo milenio ha de encontrarnos, junto coraz�n, como so�amos"
	
	method duracion() = 154
	
	method longitudDeLetra() = self.letra().size()
}

object almaDeDiamante{
	
	method letra() = "Ven a m� con tu dulce luz alma de diamante. Y aunque el sol se nuble despu�s sos alma de diamante. Cielo o piel silencio o verdad sos alma de diamante. Por eso ven as� con la humanidad alma de diamante"
	
	method duracion() = 216
	
	method longitudDeLetra() = self.letra().size()
}

object crisantemo{
	
	method letra() = "T�came junto a esta pared, yo quede por aqu�... cuando no hubo m�s luz... quiero mirar a trav�s de mi piel... Crisantemo, que se abri�... encuentra el camino hacia el cielo"
	
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









