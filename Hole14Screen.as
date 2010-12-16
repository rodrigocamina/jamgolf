package  
{
	import flash.display.Stage;
	import flash.events.Event;
	/**
	 * ...
	 * @author Rodrigo Camina
	 */
	public class Hole14Screen extends JAMWindow
	{
		
		var taco:Taco = new Taco();
		var bola:Bola = new Bola();
		public function Hole14Screen(stage:Stage) 
		{
			super(stage);
			var hole14:Hole1 = new Hole1();
			hole14.x = 0;
			hole14.y = 0;
			addObject(hole14);
			
			var areia1:Areia = new Areia();
			areia1.x = 130;
			areia1.y = 250;
			areia1.scaleX = 2.3;
			areia1.scaleY = 1;
			areia1.init(0.5);
			terrenos.addObject(areia1);
			
			var inclinacao1:Rampa_Quadrada = new Rampa_Quadrada();
			inclinacao1.x = 158;
			inclinacao1.y = 325;
			inclinacao1.scaleX = 0.4;
			inclinacao1.scaleY = 0.8;
			inclinacao1.rotation = 0;
			terrenos.addObject(inclinacao1);
			
			var inclinacao2:Rampa_Quadrada = new Rampa_Quadrada();
			inclinacao2.x = 202;
			inclinacao2.y = 85;
			inclinacao2.scaleX = 0.4;
			inclinacao2.scaleY = 0.8;
			inclinacao2.rotation = 180;
			terrenos.addObject(inclinacao2);
			
			var inclinacao3:Rampa_Quadrada = new Rampa_Quadrada();
			inclinacao3.x = 325;
			inclinacao3.y = 325;
			inclinacao3.scaleX = 0.4;
			inclinacao3.scaleY = 0.8;
			inclinacao3.rotation = 0;
			terrenos.addObject(inclinacao3);
			
			var inclinacao4:Rampa_Quadrada = new Rampa_Quadrada();
			inclinacao4.x = 369;
			inclinacao4.y = 85;
			inclinacao4.scaleX = 0.4;
			inclinacao4.scaleY = 0.8;
			inclinacao4.rotation = 180;
			terrenos.addObject(inclinacao4);
			
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
			
			var muro1:BarreiraMadeira = new BarreiraMadeira();
			muro1.x = 202;
			muro1.y = 159;
			muro1.scaleX = 0.1;
			muro1.scaleY = 0.3;
			muro1.rotation = 0;
			barreiras.addObject(muro1);
			
			var muro2:BarreiraMadeira = new BarreiraMadeira();
			muro2.x = 202;
			muro2.y = 244;
			muro2.scaleX = 0.1;
			muro2.scaleY = 0.3;
			muro2.rotation = 180;
			barreiras.addObject(muro2);
			
			var muro3:BarreiraMadeira = new BarreiraMadeira();
			muro3.x = 200;
			muro3.y = 161;
			muro3.scaleX = 0.1;
			muro3.scaleY = 0.3;
			muro3.rotation = -90;
			barreiras.addObject(muro3);
			
			var muro4:BarreiraMadeira = new BarreiraMadeira();
			muro4.x = 285;
			muro4.y = 161;
			muro4.scaleX = 0.1;
			muro4.scaleY = 0.3;
			muro4.rotation = 90;
			barreiras.addObject(muro4);
			
			var muro5:BarreiraMadeira = new BarreiraMadeira();
			muro5.x = 324;
			muro5.y = 169;
			muro5.scaleX = 0.1;
			muro5.scaleY = 0.3;
			muro5.rotation = 0;
			barreiras.addObject(muro5);
			
			var muro6:BarreiraMadeira = new BarreiraMadeira();
			muro6.x = 324;
			muro6.y = 254;
			muro6.scaleX = 0.1;
			muro6.scaleY = 0.3;
			muro6.rotation = 180;
			barreiras.addObject(muro6);
			
			var muro7:BarreiraMadeira = new BarreiraMadeira();
			muro7.x = 240;
			muro7.y = 251;
			muro7.scaleX = 0.1;
			muro7.scaleY = 0.3;
			muro7.rotation = -90;
			barreiras.addObject(muro7);
			
			var muro8:BarreiraMadeira = new BarreiraMadeira();
			muro8.x = 325;
			muro8.y = 251;
			muro8.scaleX = 0.1;
			muro8.scaleY = 0.3;
			muro8.rotation = 90;
			barreiras.addObject(muro8);
			
			var buraco:Buraco = new Buraco();
			buraco.x = 265;
			buraco.y = 50;
			buraco.scaleX = 0.3;
			buraco.scaleY = 0.3;
			addObject(buraco);
			
			taco.x = 275;
			taco.y = 360;
			trace(bola == null);
			trace(taco == null);
			trace(buraco == null);
			trace(stage == null);
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