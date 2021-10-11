
class Bicicletas{
	var property rodado
	var property largo
	var property marca
	
	const accesorios=[]
	
	method agregarAccesorio(acc){ accesorios.add(acc)}
	method sacarAccesorio(acc){ accesorios.add(acc)}
	method accesorios()= accesorios
	method altura()= rodado * 2.5 + 15
	method velocidadCrucero()= if (largo >= 120 ){rodado + 6} else{ rodado +2}
	method carga() {return accesorios.sum({a=> a.carga()})}
	method pesoTotalAccesorios(){return accesorios.sum({a=> a.pesoAccesorio()})}
	method peso()= (rodado / 2) + self.pesoTotalAccesorios()
	method tieneLuz(){ return accesorios.any({a=> a.esLuminoso()})}
	method cantidadAccesoriosLivianos(){return accesorios.count( {a => a.pesoAccesorio()<1})}
	
}


class Farolito{
	method pesoAccesorio()=0.5
	method carga()= 0
	method esLuminoso()= true
}

class Canasto{
	var property volumen
	method pesoAccesorio()=volumen /10
	method carga()= volumen *2
	method esLuminoso()= false
}

class Morral{
	var property largo
	var property tieneOjoDeGato
	method pesoAccesorio()=1.2
	method carga()= largo /3
	method esLuminoso()= tieneOjoDeGato
	
}


/*  se tiene que agregar las clases con ,minimo,los metodos pesoAccesorio, carga y esLuminoso  */
 