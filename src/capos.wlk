import artefactos.*
object rolando{
	const capacidad=2
	var artefactos = #{}
	var hogar = castilloDePiedra
	method agarrar (artefacto){
		if(artefactos.size()<capacidad){
			artefactos.add(artefacto)
		}
	}
	method puedeAgregar(){
		return artefactos.size()<capacidad
	}
	method irAlHogar(){
		self.guardarArtefactosEnHogar(artefactos)
		self.liberarEspacio()
		
	}
	method guardarArtefactosEnHogar(){
		hogar.guardarTodosLosArtefactos(artefactos)
	}
	method liberarEspacio(){
		artefactos.clear()
	}
	method posee(artefacto){
		return self.todasLasPosesiones().contains(artefacto)
	}
	method todasLasPosesiones(){
		return artefactos.union(hogar.baul())
	}

}