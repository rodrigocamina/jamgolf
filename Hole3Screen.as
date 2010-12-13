package  
{
	import flash.display.Stage;
	import flash.events.Event;
	/**
	 * ...
	 * @author jean
	 */
	public class Hole3Screen extends JAMWindow
	{
	
		var taco = new Taco();
		var bola:Bola = new Bola();
		public function Hole3Screen(stage:Stage) 
		{
			super(stage);
			var hole3:Hole12 = new Hole12();
			var parede:Barreira = new Barreira();
			var buraco:Buraco = new Buraco();
			var rampa:Rampa_Quadrada = new Rampa_Quadrada();
			
			
			hole3.x = 0;
			hole3.y = 0;
			addObject(hole3);
			
			//left
			parede = new Barreira;
			parede.scaleX = 0.1;
			parede.scaleY = 0.35;
			parede.x  = 87;
			parede.y  = 25;
			barreiras.addObject(parede);
			
			parede = new Barreira;
			parede.scaleX = 0.1;
			parede.scaleY = 0.55;
			parede.x  = 220;
			parede.y  = 124;
			barreiras.addObject(parede);
			
			parede = new Barreira;
			parede.scaleX = 0.1;
			parede.scaleY = 0.32;
			parede.x  = 87;
			parede.y  = 280;
			barreiras.addObject(parede);
			
			//up
			parede = new Barreira;
			parede.rotation = 90;
			parede.scaleX = 0.1;
			parede.scaleY = 1.3;
			parede.x  = 455;
			parede.y  = 20;
			barreiras.addObject(parede);
			
			parede = new Barreira;
			parede.rotation = 90;
			parede.scaleX = 0.1;
			parede.scaleY = 0.5;
			parede.x  = 458;
			parede.y  = 279;
			barreiras.addObject(parede);
			
			parede = new Barreira;
			parede.rotation = 90;
			parede.scaleX = 0.1;
			parede.scaleY = 0.5;
			parede.x  = 243;
			parede.y  = 279;
			barreiras.addObject(parede);
			
			//down
			parede = new Barreira;
			parede.rotation =- 90;
			parede.scaleX = 0.1;
			parede.scaleY = 1.3;
			parede.x  =88;
			parede.y  = 373;
			barreiras.addObject(parede);
			
			parede = new Barreira;
			parede.rotation =- 90;
			parede.scaleX = 0.1;
			parede.scaleY = 0.5;
			parede.x  = 315;
			parede.y  = 130;
			barreiras.addObject(parede);
			
			parede = new Barreira;
			parede.rotation =- 90;
			parede.scaleX = 0.1;
			parede.scaleY = 0.5;
			parede.x  = 100;
			parede.y  = 125;
			barreiras.addObject(parede);
			
			//ringht
			parede = new Barreira;
			parede.rotation =180;
			parede.scaleX = 0.1;
			parede.scaleY = 0.32;
			parede.x  =458;
			parede.y  = 370;
			barreiras.addObject(parede);
			
			parede = new Barreira;
			parede.rotation =180;
			parede.scaleX = 0.1;
			parede.scaleY = 0.69;
			parede.x  = 325;
			parede.y  = 302;
			barreiras.addObject(parede);
			
			parede = new Barreira;
			parede.rotation =180;
			parede.scaleX = 0.1;
			parede.scaleY = 0.35;
			parede.x  = 457;
			parede.y  = 121
			barreiras.addObject(parede);
			
			//buraco
			buraco.x = 400;
			buraco.y = 325;
			buraco.scaleX = 0.30;
			buraco.scaleY = 0.30;
			addObject(buraco);
			
			/////////////////////////////////////rampa tem que ver o que esta acontecendo./////////////////////////////////////////////////////////////
			rampa.rotation = 180;
			rampa.x =150;
			rampa.y = 150;
			terrenos.addObject(rampa);
			
			
			taco.x = 150;
			taco.y = 75;
			taco.init(bola,stage)
			bola.init(this,taco);
			addObject(bola);
			addObject(taco);
		}
		
		override public function update(evt:Event) {
			taco.simulate();
			bola.update();
		}
	}

}