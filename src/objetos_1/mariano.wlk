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
		bolsaGolosinas.any { golosina => golosina.libreGluten()}
	}
	
	method preciosCuidados(){
		bolsaGolosinas.all { golosina =>  golosina.precio() <= 10  }
	}
	
	method golosinaDeSabor(unSabor){
		bolsaGolosinas.find { golosina => golosina.gusto() == unSabor}
	}
	
	method golosinasDeSabor(unSabor){
		bolsaGolosinas.filter { golosina => golosina.gusto() == unSabor}
	}
	
	method sabores() {
     return bolsaGolosinas.map{ golosina => golosina.gusto() }.asSet()
    }
    
	method golosinaMasCara(){
		bolsaGolosinas.max { golosina => golosina.precio()}
	}
	
	method golosinasFaltantes(golosinasDeseadas){
		golosinasDeseadas.asSet().difference(bolsaGolosinas.asSet())
	}
	
	method pesoGolosinas(){
		bolsaGolosinas.sum{ golosina => golosina.peso()}
	}
}
	
