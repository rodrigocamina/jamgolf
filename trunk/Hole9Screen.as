package  
{
	import flash.display.Stage;
	/**
	 * ...
	 * @author jean
	 */
	public class Hole9Screen extends JAMWindow
	{
		
		public function Hole9Screen(stage:Stage) 
		{
			super(stage);
			var parede:Barreira = new Barreira;
			var hole9:Hole9 = new Hole9;
			var buraco:Buraco = new Buraco;
			var areia:Areia = new Areia;
			
			hole9.x = 0;
			hole9.y = 0;
			addObject(hole9);
			
			//left
			parede = new Barreira;
			parede.scaleX = 0.8;
			parede.scaleY = 0.65;
			parede.rotation = 0;
			parede.x  =30;
			parede.y  = 20;
			barreiras.addObject(parede);
			
			parede = new Barreira;
			parede.scaleX = 0.8;
			parede.scaleY = 0.55;
			parede.rotation = 0;
			parede.x  = 286;
			parede.y  = 204;
			barreiras.addObject(parede);
			
			//up
			parede = new Barreira;
			parede.scaleX = 0.8;
			parede.scaleY = 0.65;
			parede.rotation = 0;
			parede.x  =30;
			parede.y  = 20;
			barreiras.addObject(parede);
			
			parede = new Barreira;
			parede.scaleX = 0.8;
			parede.scaleY = 0.55;
			parede.rotation = 0;
			parede.x  = 286;
			parede.y  = 204;
			barreiras.addObject(parede);
			
		}
		
	}

}