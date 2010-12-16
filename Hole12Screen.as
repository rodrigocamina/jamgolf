package  
{
	import flash.display.Stage;
	import flash.events.Event;
	/**
	 * ...
	 * @author Rodrigo Camina
	 */
	public class Hole12Screen extends JAMWindow
	{
		var taco:Taco = new Taco();
		var bola:Bola = new Bola();
		
		public function Hole12Screen(stage:Stage) 
		{
			super(stage);
			var hole12:Hole13 = new Hole13();
			hole12.x = 0;
			hole12.y = 0;
			addObject(hole12);
			
			
			var inclinacao1:Rampa_Quadrada = new Rampa_Quadrada();
			inclinacao1.x = 330;
			inclinacao1.y = 56;
			inclinacao1.scaleX = 1;
			inclinacao1.scaleY = 1;
			inclinacao1.rotation = 180;
			terrenos.addObject(inclinacao1);
			
			var inclinacao2:Rampa_Quadrada = new Rampa_Quadrada();
			inclinacao2.x = 220;
			inclinacao2.y = 345;
			inclinacao2.scaleX = 1;
			inclinacao2.scaleY = 1;
			inclinacao2.rotation = 0;
			terrenos.addObject(inclinacao2);
			
			var inclinacao3:Rampa_Quadrada = new Rampa_Quadrada();
			inclinacao3.x = 127;
			inclinacao3.y = 146;
			inclinacao3.scaleX = 1;
			inclinacao3.scaleY = 1;
			inclinacao3.rotation = 90;
			terrenos.addObject(inclinacao3);
			
			var inclinacao4:Rampa_Quadrada = new Rampa_Quadrada();
			inclinacao4.x = 423;
			inclinacao4.y = 255;
			inclinacao4.scaleX = 1;
			inclinacao4.scaleY = 1;
			inclinacao4.rotation = -90;
			terrenos.addObject(inclinacao4);
			
			
			
			var muro1:BarreiraMadeira = new BarreiraMadeira();
			muro1.x = 332;
			muro1.y = 254;
			muro1.scaleX = 0.1;
			muro1.scaleY = 0.15;
			muro1.rotation = 0;
			barreiras.addObject(muro1);
			
			var muro2:BarreiraMadeira = new BarreiraMadeira();
			muro2.x = 332;
			muro2.y = 297;
			muro2.scaleX = 0.1;
			muro2.scaleY = 0.15;
			muro2.rotation = 180;
			barreiras.addObject(muro2);
			
			var muro3:BarreiraMadeira = new BarreiraMadeira();
			muro3.x = 330;
			muro3.y = 256;
			muro3.scaleX = 0.1;
			muro3.scaleY = 0.15;
			muro3.rotation = -90;
			barreiras.addObject(muro3);
			
			var muro4:BarreiraMadeira = new BarreiraMadeira();
			muro4.x = 372;
			muro4.y = 256;
			muro4.scaleX = 0.1;
			muro4.scaleY = 0.15;
			muro4.rotation = 90;
			barreiras.addObject(muro4);
			
			var parede3:Barreira = new Barreira();
			parede3.x = 470;
			parede3.y = 0;
			parede3.scaleX = 2;
			parede3.scaleY = 1.4;
			parede3.rotation = 90;
			barreiras.addObject(parede3);
			
			var parede4:Barreira = new Barreira();
			parede4.x = 80;
			parede4.y = 400;
			parede4.scaleX = 2;
			parede4.scaleY = 1.4;
			parede4.rotation = -90;
			barreiras.addObject(parede4);
			
			var parede1:Barreira = new Barreira();
			parede1.x = 70;
			parede1.y = 0;
			parede1.scaleX = 2;
			parede1.scaleY = 1.8;
			parede1.rotation = 0;
			barreiras.addObject(parede1);
			
			var parede2:Barreira = new Barreira();
			parede2.x = 480;
			parede2.y = 400;
			parede2.scaleX = 2;
			parede2.scaleY = 1.8;
			parede2.rotation = 180;
			barreiras.addObject(parede2);
			
			var buraco:Buraco = new Buraco();
			buraco.x = 400;
			buraco.y = 323;
			buraco.scaleX = 0.3;
			buraco.scaleY = 0.3;
			addObject(buraco);
			
			taco.x = 150;
			taco.y = 75;
			taco.init(bola,stage)
			bola.init(this,taco, buraco);
			addObject(bola);
			addObject(taco);
		}
		
		override public function update(evt:Event) {
			taco.simulate();
			bola.update();
		}

		
	}

}