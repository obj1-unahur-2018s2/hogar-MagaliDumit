import personas.*

class Casa {
	
}

class Habitaciones inherits Casa {
	
	method nivelConfort(persona) {return 10 }
	method ingresar()
}

class HabitacionesDeUsoGeneral inherits Habitaciones{
	override method ingresar() { return true }
}
 
class Banio inherits Habitaciones{
	override method nivelConfort(persona){ 
		if (persona.edad() >= 5){return super(persona)+ 4}
		else {return super(persona)+ 2} 
	}
	
	override method ingresar() { return true } 
}  

class Dormitorios inherits Habitaciones{
	const cantidadDuenios = #{}
	method registrarDuenio(persona) {cantidadDuenios.add(persona)}
	override method nivelConfort(persona){
		
		if ( self.esDuenio(persona)) {
			return super(persona) +( 10 / cantidadDuenios.size())  
		}else {return super(persona) }}
//no se debe devolver 0 (se debe entender la diferencia entre 0 y nada) 

	method esDuenio(persona) {return cantidadDuenios.contains(persona)}

	}


class Cocina inherits Habitaciones{
	var property metrosCuadrados = 0
	override method nivelConfort(persona){ 
		super(persona)
		if (persona.esCocinero() == 1) { return ingresar } 
	} 
}  

 






