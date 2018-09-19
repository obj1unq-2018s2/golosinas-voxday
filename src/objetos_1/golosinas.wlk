object bombon {
	var peso = 15
	
	method precio() { return 5 }
	method peso() { return peso }
	method mordisco() { peso = peso * 0.8 - 1 }
	method gusto() { return "frutilla" }
	method libreGluten() { return true }
}

object alfajor {
	var peso = 300 
	
	method precio() { return 12 }
	method gusto() { return "chocolate" }
	method libreGluten() { return false }
	method mordisco(){ peso = peso * 0.8}	
	method peso() { return peso }
}

object caramelo {
	var peso = 5
	
	method precio() { return 1 }
	method gusto() { return "frutilla" }
	method mordisco() { peso = peso - 1  }
	method peso() { return peso }
	method libreGluten(){
		return true
	}
}

object chupetin {
	var peso = 7
	
	method precio() { return 2 }
	method gusto() { return "naranja" }
	method libreGluten() { return true }
	method mordisco() {
		if( peso > 2 ){
		peso = peso * 0.9
		}
	}
	
	method peso() {
		return peso
	} 
	}
	
	

object oblea {
	var peso = 250
	
	method precio() { return 5 }
	method gusto() { return "vainilla" }
	method libreGluten() { return false }
	method mordisco() {
	  if (peso>70) peso = peso * 0.5 else peso = peso * 0.75
	}
		
	method peso(){
		return peso
	}
	}

object chocolatin {
	var pesoInicial
	var pesoActual
	
	method pesoInicial(cuanto) { 
		pesoInicial = cuanto
		pesoActual = cuanto
	}
	method precio() { return pesoInicial * 0.5 }
	method peso() { return pesoActual }
	
	
	
	
	method mordisco(){
		
		pesoActual = pesoActual - 2
	}
	method libreGluten(){
		return false
	}
	
	method gusto(){
		return "chocolate"
	}
	
}

object golosinaBaniada {
	var golosinaInterior
	var pesoBanio = 4
	
	method baniaA(unaGolosina) { golosinaInterior = unaGolosina }
	method precio() { return golosinaInterior.precio() + 2 }
	method peso() {return  golosinaInterior.peso() + pesoBanio }
	method mordisco() {
		golosinaInterior.mordisco()
		if (pesoBanio > 0) { pesoBanio -= 2 }
		// otra forma de hacer la cuenta: pesoBanio = (pesoBanio - 2).max(0) 
	}	
	method gusto() { return golosinaInterior.gusto() }
	method libreGluten() { return golosinaInterior.libreGluten()}	
}

object tuttifrutti {
	// como manejar el cambio de sabor ??
	var peso = 5
	var libreGluten = false
	var sabor = "frutilla"
	
	method peso()
   { return peso }	
   
    method libreGluten(){
		return  libreGluten
	}
	
	method aptoParaCeliacos()
	{
		libreGluten = true
	}
	method precio(){
		if( libreGluten){
			return 7
		} else {
			return 10
		}
	}
	
	method mordisco() {
		peso = peso * 0.9
		
		if(sabor == "frutilla"){
			sabor = "chocolate"
		}else if(sabor == "chocolate"){
			sabor = "naranja"
		}else if(sabor == "naranja"){
			sabor = "frutilla"
		}
	}
	method gusto() { return sabor}
}

