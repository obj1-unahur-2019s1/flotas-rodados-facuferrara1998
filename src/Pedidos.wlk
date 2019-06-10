import Rodados.*	
import Dependencia.*

class Pedido {
	
	var property distancia
	var property tiempoMaximo
	var property pasajerosATransportar
	var property coloresIncompatibles = #{}
	
	method velocidadRequerida() = distancia / tiempoMaximo
	
	method puedeSatisfacerUnPedido(unAuto) = 
			return unAuto.velocidadMaxima() - self.velocidadRequerida() >= 10
				and  unAuto.capacidad() >= pasajerosATransportar
					and   not coloresIncompatibles.any{c => c == unAuto.color()}
					
	method acelerar(){
		tiempoMaximo = 1.max(tiempoMaximo - 1)
	}
	method relajar(){
		tiempoMaximo += 1
	}
	
} 
