package  
{
	import flash.display.Stage;
	import flash.events.Event;
	/**
	 * ...
	 * @author Rodrigo Camina
	 */
	public class Hole4Screen extends JAMWindow
	{
		var taco = new Taco();
		var bola:Bola = new Bola();
		
		public function Hole4Screen(stage:Stage) 
		{
			super(stage);
			var hole4:Hole1 = new Hole1();
			hole4.x = 0;
			hole4.y = 0;
			addObject(hole4);
			
			var parede1:Barreira = new Barreira();
			parede1.x = 140;
			parede1.y = 400;
			parede1.scaleY = 0.85;
			parede1.rotation = -90;
			barreiras.addObject(parede1);
			
			var parede2:Barreira = new Barreira();
			parede2.x = 395;
			parede2.y = 400;
			parede2.scaleY = 1.8;
			parede2.rotation = 180;
			barreiras.addObject(parede2);
			
			var parede3:Barreira = new Barreira();
			parede3.x = 385;
			parede3.y = 0;
			parede3.scaleY = 0.85;
			parede3.rotation = 90;
			barreiras.addObject(parede3);
			
			var parede4:Barreira = new Barreira();
			parede4.x = 130;
			parede4.y = 0;
			parede4.scaleY = 1.8;
			parede4.rotation = 0;
			barreiras.addObject(parede4);
			
			var inclinacao1:Rampa_Quadrada = new Rampa_Quadrada();
			inclinacao1.x = 366;
			inclinacao1.y = 200;
			inclinacao1.scaleX = 1;
			inclinacao1.scaleY = 2.21;
			inclinacao1.rotation = -90;
			terrenos.addObject(inclinacao1);
			
			var inclinacao2:Rampa_Quadrada = new Rampa_Quadrada();
			inclinacao2.x = 158;
			inclinacao2.y = 203;
			inclinacao2.scaleX = 1;
			inclinacao2.scaleY = 2.21;
			inclinacao2.rotation = 90;
			terrenos.addObject(inclinacao2);
			
			var buraco:Buraco = new Buraco();
			buraco.x = 265;
			buraco.y = 50;
			buraco.scaleX = 0.3;
			buraco.scaleY = 0.3;
			addObject(buraco);
			
			taco.x = 275;
			taco.y = 360;
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