import mundoMusical.*
import Album.*
import guitarra.*
import canciones.*
import presentacion.*

object fixtureAuxiliar {

	const fender = new Guitarra(10)
	const gibson = new Guitarra(15)
	const lucia = new Musico(new TipoMusicoSolista("familia"),70)
	const joaquin = new Musico(new TipoMusicoDeGrupo(5), 20)
	const luisAlberto = new Musico(new TipoMusicoReCapo(fender))
	const soledad = new Musico(new TipoMusicoSolista("amor"),55)
	const kike = new Musico(new TipoMusicoDeGrupo(20),60)
	const cisne = new Cancion("Cisne", 312, luisAlberto, "Hoy el viento se abrió quedó vacío el aire una vez más y el manantial brotó y nadie está aquí y puedo ver que solo estallan las hojas al brillar")
	const laFamilia = new Cancion ("La familia", 264, joaquin, "Quiero brindar por mi gente sencilla, por el amor brindo por la familia")
	const eres = new Cancion("Eres", 145 , soledad ,"Eres lo mejor que me pasó en la vida, no tengo duda, no habrá más nada después de ti. Eres lo que le dio brillo al día a día, y así será por siempre, no cambiará, hasta el final de mis días")
	const corazonAmericano = new Cancion ("Corazon americano", 154 , soledad , "Canta corazón, canta más alto, que tu pena al fin se va marchando, el nuevo milenio ha de encontrarnos, junto corazón, como soñamos")
	const almaDeDiamante = new Cancion("Alma de Diamante", 216 , luisAlberto ,"Ven a mí con tu dulce luz alma de diamante. Y aunque el sol se nuble después sos alma de diamante. cielo o piel silencio o verdad sos alma de diamante. Por eso ven así con la humanidad alma de diamante")
	const crisantemo = new Cancion("Crisantemo", 175 , luisAlberto ,"Tócame junto a esta pared, yo quede por aquí... cuando no hubo más luz... quiero mirar a través de mi piel... Crisantemo, que se abrió... encuentra el camino hacia el cielo")
	const especialLaFamilia = new Album("Especial la familia", joaquin, [laFamilia], 100000, 89000, 17/06/1992)
	const laSole = new Album("La Sole", soledad, [eres, corazonAmericano], 200000, 130000, 04/02/2005)
	const paraLosArboles = new Album("Para los arboles", luisAlberto, [cisne, almaDeDiamante], 50000, 49000, 31/03/2003)
	const justCrisantemo = new Album("Just crisantemo", luisAlberto, [crisantemo], 28000, 27500, 05/12/2007)
	const presentacionLunaPark = new Presentacion(lunaPark, new Date(20,4,2017), [luisAlberto,joaquin,lucia])
	const presentacionLaTrastienda = new Presentacion(laTrastienda, new Date(15,11,2017), [luisAlberto,joaquin,lucia])
	
	method fender() = fender
	method gibson() = gibson
	method lucia() = lucia
	method joaquin() = joaquin
	method luisAlberto() = luisAlberto
	method soledad() = soledad
	method kike() = kike
	method cisne() = cisne
	method laFamilia() = laFamilia
	method eres() = eres
	method corazonAmericano() = corazonAmericano
	method almaDeDiamante() = almaDeDiamante
	method crisantemo() = crisantemo
	method especialLaFamilia() = especialLaFamilia
	method laSole() = laSole
	method paraLosArboles() = paraLosArboles
	method justCrisantemo() = justCrisantemo
	method presentacionLunaPark() = presentacionLunaPark
	method presentacionLaTrastienda() = presentacionLaTrastienda
	
	method inicializar(){
		joaquin.agregarAlbumes([especialLaFamilia])
    	luisAlberto.agregarAlbumes([paraLosArboles,justCrisantemo])
    	soledad.agregarAlbumes([laSole])
	}

}