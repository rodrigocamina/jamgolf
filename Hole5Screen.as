package  
{
	import flash.display.Stage;
	import flash.events.Event;
	/**
	 * ...
	 * @author jean
	 */
	public class Hole5Screen extends JAMWindow
	{
		var taco = new Taco();
		var bola:Bola = new Bola();
		public function Hole5Screen(stage:Stage) 
		{
			super(stage);
			var parede:Barreira = new Barreira;
			var hole5:Hole8 = new Hole8;
			var buraco:Buraco = new Buraco;
			
			
			hole5.x = 0;
			hole5.y = 0;
			addObject(hole5);
			
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
			
		
			taco.x = 70;
			taco.y = 70;
			taco.init(bola,stage)
			bola.init(this,taco,buraco);
			addObject(bola);
			addObject(taco);
		}
		
		override public function update(evt:Event) {
			taco.simulate();
			bola.update();
		}

		
	}

}