import Rodados.*
import Pedidos.*

class Dependencia {

	const flota = #{}
	var property empleados = 0
	var property pedidos = #{}

	method agregarAFlota(rodado) {
		flota.add(rodado)
	}

	method quitarDeFlota(rodado) {
		flota.remove(rodado)
	}

	method pesoTotalFlota() = flota.sum{ r => r.peso() } // sumar 

	method estaBienEquipada() {
		return flota.size() >= 3 and flota.all{ r => r.velocidadMaxima() >= 100 }
	} // tiene mas de 3 elemenotos en la coleccion, y si todos superan la velocidad

	method capacidadTotalEnColor(unColor) { // filtrar los que cumplen con ese color y sumar la capacidad
		return flota.filter{ r => r.color() == unColor } // devuelve una coleccion
		.sum{ r => r.capacidad() } // a esa coleccion le aplico una suma
	}

	method colorDelRodadoMasRapido() {
		return flota.max{ r => r.velocidadMaxima() }.color()
	} // max es igual a un objeto algo comparable a la velmax  y tiene que entender el color 

	method capacidadFaltante() {
		return 0.max(empleados - self.capacidadTotal())
	} // como max 0 sin negativos 

	method capacidadTotal() {
		return flota.sum{ r => r.capacidad() }
	}

	method esGrande() {
		return empleados >= 40 and flota.size() >= 5
	}

	method totalPasajerosPedidos() {
		return pedidos.sum({ e => e.pasajeros() })
	}

	method noPuedenSerSatisfechos() {
		return pedidos.filter{ e => not self.puedenSerSatisfecho(e) }
	// si algun auto de los mios no satisface a la flota
	}

	method puedenSerSatisfecho(pedido) {
		return flota.any({ a => pedido.puedenSatisfacerUnPedido(a) })
	} // si hay algun auto que lo puede satisfacer eso devuelve verdadero

} // velocidadRequerida - velociadadMaxima <= 10
//flatMap es para cuanto tengo algo y lo quiero hacer una lista
//fold sirve para hacer cuentas sin tener que definir a una variable

