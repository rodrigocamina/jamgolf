package  
{
	import flash.display.Stage;
	/**
	 * ...
	 * @author jean
	 */
	public class Hole5Screen extends JAMWindow
	{
		
		public function Hole5Screen(stage:Stage) 
		{
			super(stage);
			var parede:Barreira = new Barreira;
			var hole5:Hole8 = new Hole8;
			var buraco:Buraco = new Buraco;
			
			
			hole5.x = 0;
			hole5.y = 0;
			addObject(hole5);
			
				//ranpa
			var rampaTriangular:Rampa_Triangular = new Rampa_Triangular;
			rampaTriangular.x = 460;
			rampaTriangular.y = 150;
			rampaTriangular.rotation = 90; 
			rampaTriangular.scaleX = -1.1;
			rampaTriangular.scaleY = -1.1;
			terrenos.addObject(rampaTriangular);
			
			
			rampaTriangular = new Rampa_Triangular;
			rampaTriangular.x = 357;
			rampaTriangular.y = 35;
			rampaTriangular.scaleX = 1.1;
			rampaTriangular.scaleY = 1.1;
			rampaTriangular.rotation = 90; 
			terrenos.addObject(rampaTriangular);
			
			//left
			parede = new Barreira;
			parede.scaleX = 0.8;
			parede.scaleY = 0.42;
			parede.x  = 29;
			parede.y  = 23;
			barreiras.addObject(parede);
			
			parede = new Barreira;
			parede.scaleX = 0.8;
			parede.scaleY = 0.85;
			parede.x  =336;
			parede.y  = 131;
			barreiras.addObject(parede);
			
			//up
			parede = new Barreira;
			parede.scaleX = 0.8;
			parede.scaleY = 1.5;
			parede.rotation = 90;
			parede.x  =459;
			parede.y  = 22;
			barreiras.addObject(parede);
			
			//down
			parede = new Barreira;
			parede.scaleX = 0.8;
			parede.scaleY = 1.17;
			parede.rotation = -90;
			parede.x  =28;
			parede.y  = 148;
			barreiras.addObject(parede);
			
			parede = new Barreira;
			parede.scaleX = 0.8;
			parede.scaleY = 0.45;
			parede.rotation = -90;
			parede.x  = 337;
			parede.y  = 375;
			barreiras.addObject(parede);
			
			//ringht
			parede = new Barreira;
			parede.scaleX = 0.8;
			parede.scaleY = 1.25;
			parede.rotation = 180;
			parede.x  =480;
			parede.y  = 376;
			barreiras.addObject(parede);
			
			//bola
			buraco.x = 410;
			buraco.y = 330;
			buraco.scaleX = 0.30;
			buraco.scaleY = 0.30;
			addObject(buraco);
			
		
		}
		
	}

}