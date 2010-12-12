package  
{
	import flash.display.Stage;
	/**
	 * ...
	 * @author jean
	 */
	public class Hole7Screen extends JAMWindow
	{
		
		public function Hole7Screen(stage:Stage) 
		{
			super(stage);
			var parede:Barreira = new Barreira;
			var hole7:Hole15 = new Hole15;
			var buraco:Buraco = new Buraco;
			var areia:Areia = new Areia;
			
			hole7.x = 0;
			hole7.y = 0;
			addObject(hole7);
			
			///areia
			areia.x = 101;
			areia.y = 240;
			areia.scaleX = 3;
			terrenos.addObject(areia);
			
			
			//left
			parede = new Barreira;
			parede.scaleX = 0.8;
			parede.scaleY = 0.40;
			parede.rotation = 0;
			parede.x  =12;
			parede.y  = 130;
			barreiras.addObject(parede);
			
			//up
			parede = new Barreira;
			parede.scaleX = 0.8;
			parede.scaleY = 1.8;
			parede.rotation = 90;
			parede.x  =527;
			parede.y  = 130;
			barreiras.addObject(parede);
			
			//down		
			parede = new Barreira;
			parede.scaleX = 0.8;
			parede.scaleY = 1.82;
			parede.rotation = -90;
			parede.x  =11;
			parede.y  = 253;
			barreiras.addObject(parede);
			
			//right
			parede = new Barreira;
			parede.scaleX = 0.8;
			parede.scaleY = 0.43;
			parede.rotation = 180;
			parede.x  =530;
			parede.y  = 253;
			barreiras.addObject(parede);
			
			//buraco
			buraco.x = 482;
			buraco.y = 191;
			buraco.scaleX = 0.30;
			buraco.scaleY = 0.30;
			addObject(buraco); 

			
		}
		
	}

}