import Presentacion.*
import Musico.*
import Cancion.*

class PresentacionConRestricciones inherits Presentacion {
method puedePresentarse(unaPersona){}
}
object pdpalooza inherits PresentacionConRestricciones{
	override method sePresentan(nuevasPersonas){
		nuevasPersonas.forEach({unaPersona => self.puedePresentarse(unaPersona)
			self.agregaMusico(unaPersona)
		} )
	}
	override method puedePresentarse(unaPersona){
		const cancion = new Cancion("cancion de alicia en el pais","Qui�n sabe Alicia, este pa�s no estuvo hecho porque s�. Te vas a ir, vas a salir pero te quedas, �d�nde m�s vas a ir? Y es que aqu�, sabes el trabalenguas, trabalenguas, el asesino te asesina, y es mucho para ti. Se acab� ese juego que te hac�a feliz.",510)
	
		if(unaPersona.esHabilidoso().negate()){
			throw new Exception("el musico no puede participar si posee menos de 70 puntos de habilidad")
		}
		 if(unaPersona.publicoUnAlbum().negate()){
			throw new Exception ("el musico debe haber publicado al menos un album de su autoria")
		}
	  if(unaPersona.interpretasBien(cancion).negate())
	 	throw new Exception("Debe poder cantar 'Canci�n de Alicia en el Pa�s")
	 
	 	}
	}