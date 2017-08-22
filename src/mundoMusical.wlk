object joaquin {
	
	var habilidad = 20
	
	method habilidad(conQuienCanta) { 			
		if(conQuienCanta == "solo") {
			return habilidad
		}
		else{
			return (habilidad + 5)
		}
	} 
	
	method interpretaBien(cancion) = (cancion.duracion() > 300)
	
	method banda() = "Pimpinela"
		
}

object lucia {
	var habilidad = 70
	
	method habilidad(conQuienCanta) {
		if(conQuienCanta == "sola"){
		return habilidad 
		}
		else {
			return (habilidad - 20)
		}
	}
	
	method banda() = "Pimpinela"
	
	method interpretaBien(cancion) = (cancion.letra().contains("familia"))

	method cobra(lugar){
		if (lugar.esConcurrido()){
			return 500
		}
		else{
			return 400
		}
	}

}

object luisAlberto {
	
	method habilidad(guitarra) = [100,guitarra.valor() * 8].min()   // minimo entre 100 y el valor x 8 ya que el tope es 100
	
	method interpretaBien(cancion) = return true
	
	method cobra(funcion){
		// if(funcion.fecha() < septiembre 2017){         // despues averiguo bien como manejar fecchas
		//	return 1000
		// }else{return 1200}
	}
	
}



object fender{

	method valor() = 10				//si estaba como constante no podia hacer el método habilidad de luisAlberto.
}
object gibson{
		
	// method valor() = 15 - nose como saber si esta sana o no quien me lo dice?
	
	
}



object cisne {
	
	
	method letra() = "Hoy el viento se abrió quedó vacío el aire una vez más y el manantial brotó y nadie está aquí y puedo ver que solo estallan las hojas al brillar"
	
	method duracion() = 312
	
}

object laFamilia {
	
	method letra() = "Quiero brindar por mi gente sencilla, por el amor brindo por la familia"
	
	method duracion() = 264
	
}

object lunaPark {
	
	method esConcurrido() = self.capacidad() > 5000 // cuando creemos las clases este methodo va a provenir de ahi
	
	method capacidad() = 9290
	
}

object laTrastienda {
	
	method esConcurrido() = self.capacidad() > 5000
	
	method capacidad() = 400 // ´para mi no deberia ir en dos metodos separados, 1 que diga 400 y si es sabado 700, nose como saber si es sabado? 

	method capacidadPrimerPiso() = 300 // únicamente los sabados.
	
}













