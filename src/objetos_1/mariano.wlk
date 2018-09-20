import golosinas.*

object mariano {
	 var bolsaGolosinas = #{}
	
    method comprar(golosina){  bolsaGolosinas.add(golosina) }
    
	method golosinas() {
		return bolsaGolosinas
	}
	
	method desechar(golosina){
		bolsaGolosinas.remove(golosina)
	}
	
	method probarGolosinas(){
	
		bolsaGolosinas.forEach { golosina => golosina.mordisco()}
	}
	
	method hayGolosinaSinTACC(){
		return bolsaGolosinas.any { golosina => golosina.libreGluten()}
	}
	
	method preciosCuidados(){
		return bolsaGolosinas.all { golosina =>  golosina.precio() <= 10  }
	}
	
	method golosinaDeSabor(unSabor){
		bolsaGolosinas.find { golosina => golosina.gusto() == unSabor}
	}
	
	method golosinasDeSabor(unSabor){
		return bolsaGolosinas.filter { golosina => golosina.gusto() == unSabor}.asSet()
	}
	
	method sabores() {
     return bolsaGolosinas.map{ golosina => golosina.gusto() }.asSet()
    }
    
	method golosinaMasCara(){
		return bolsaGolosinas.max { golosina => golosina.precio()}
	}
	
	method golosinasFaltantes(golosinasDeseadas){
		return golosinasDeseadas.asSet().difference(bolsaGolosinas.asSet())
	}
	
	method pesoGolosinas(){
		bolsaGolosinas.sum{ golosina => golosina.peso()}
	}

    method saboresFaltantes(sabores){
    return sabores.asSet().difference(self.sabores()) 	
    }
}
	
