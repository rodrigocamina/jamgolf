package  
{
	import flash.display.Stage;
	/**
	 * ...
	 * @author jean
	 */
	public class Hole1Screen extends JAMWindow
	{
		var parede:Barreira;
		var buraco:Buraco;
		
		public function Hole1Screen(stage:Stage) 
		{
			super(stage);
			
			var hole1:Hole1 = new Hole1();
			var parede:Barreira = new Barreira;
			var buraco = new Buraco;
			
			hole1.x = 0;
			hole1.y = 0;
			addObject(hole1);
			
			//left
			parede = new Barreira;
			parede.x  = 154;
			parede.y += 24;
			barreiras.addObject(parede);
			
			parede = new Barreira;
			parede.x  = 154;
			parede.y += 93;
			barreiras.addObject(parede);
			
			
			//right
			parede = new Barreira;
			
			parede.x  = 370;
			parede.y += 380;
			parede.rotation = 180;
			barreiras.addObject(parede);
			
			parede = new Barreira;
			
			parede.x  = 370;
			parede.y += 310;
			parede.rotation =180
			barreiras.addObject(parede);
			
			//up
			parede = new Barreira;
			parede.rotation = 90;
			parede.scaleX = 0.70;
			parede.scaleY = 0.75;
			parede.x  = 370;
			parede.y += 24;
			barreiras.addObject(parede);
			
			//down
			parede = new Barreira;
			parede.rotation = -90;
			parede.scaleX = 0.70;
			parede.scaleY = 0.75;
			parede.x  = 158;
			parede.y += 377;
			barreiras.addObject(parede);
			
			buraco.x = 256;
			buraco.y = 67;
			buraco.scaleX = 0.30;
			buraco.scaleY = 0.30;
			addObject(buraco);
			
			
			//stage.addEventListener(Event.ENTER_FRAME, currentWindow.update);
			//stage.addEventListener(MouseEvent.MOUSE_UP, currentWindow.mouseUP);
			//stage.addEventListener(MouseEvent.MOUSE_DOWN, currentWindow.mouseDOWN);

		}
		
	}

}