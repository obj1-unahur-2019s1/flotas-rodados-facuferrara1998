class Rodado {
	//identificar propiedades de la clase
	//por aca evaluo la clase
	var property capacidad 
	var property velocidad = 0
	var property color 
	var property peso = 0
	var  tieneGas = false
	
	
	method capadidad(unValor){ //setter
		capacidad = unValor
		if (tieneGas) {capacidad--}
		 //-- descuenta 1
	}
	method capacidad(){ //geter
		return capacidad
	}
	method tieneGas(unValor){
		tieneGas = unValor
		if(tieneGas) capacidad--
	}
	method tieneGas(){
		return tieneGas
	}
	method color(queColor){
		color = queColor
	
	}
	method velocidad(){
		velocidad = 
		if (tieneGas ){velocidad = 110 }
		else {velocidad = 120 }
	}
}
/*var auto = new Vehiculo()//crea un nuevo objeto

auto.cantPasajeros(3)

var auto2 = new Vehiculo()

auto2cantPasajeros()
*/