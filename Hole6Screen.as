package  
{
	import flash.display.Stage;
	import flash.events.Event;
	/**
	 * ...
	 * @author Rodrigo Camina
	 */
	public class Hole6Screen extends JAMWindow
	{
		var taco = new Taco();
		var bola:Bola = new Bola();
		
		public function Hole6Screen(stage:Stage) 
		{
			super(stage);
			var hole6:Hole7 = new Hole7();
			hole6.x = 0;
			hole6.y = 0;
			addObject(hole6);
			
			var parede1:Barreira = new Barreira();
			parede1.x = 90;
			parede1.y = 415;
			parede1.scaleY = 1.4;
			parede1.rotation = -90;
			barreiras.addObject(parede1);
			
			var parede3:Barreira = new Barreira();
			parede3.x = 490;
			parede3.y = -10;
			parede3.scaleY = 1.4;
			parede3.rotation = 90;
			barreiras.addObject(parede3);
			
			var parede6:Barreira = new Barreira();
			parede6.x = 70;
			parede6.y = 130;
			parede6.scaleY = 1.08;
			parede6.rotation = -90;
			barreiras.addObject(parede6);
			
			var parede7:Barreira = new Barreira();
			parede7.x = 376;
			parede7.y = 125;
			parede7.scaleY = 1.08;
			parede7.rotation = 90;
			barreiras.addObject(parede7);

			var parede8:Barreira = new Barreira();
			parede8.x = 348;
			parede8.y = 102;
			parede8.scaleY = 0.18;
			parede8.rotation = 0;
			barreiras.addObject(parede8);
			
			var parede9:Barreira = new Barreira();
			parede9.x = 185;
			parede9.y = 270;
			parede9.scaleY = 1.07;
			parede9.rotation = -90;
			barreiras.addObject(parede9);
			
			var parede5:Barreira = new Barreira();
			parede5.x = 488;
			parede5.y = 270;
			parede5.scaleY = 1.07;
			parede5.rotation = 90;
			barreiras.addObject(parede5);
			
			var parede10:Barreira = new Barreira();
			parede10.x = 213;
			parede10.y = 298;
			parede10.scaleY = 0.198;
			parede10.rotation = 180;
			barreiras.addObject(parede10);
			
			var parede4:Barreira = new Barreira();
			parede4.x = 70;
			parede4.y = 0;
			parede4.scaleY = 1.8;
			parede4.rotation = 0;
			barreiras.addObject(parede4);
			
			var parede2:Barreira = new Barreira();
			parede2.x = 490;
			parede2.y = 400;
			parede2.scaleY = 1.8;
			parede2.rotation = 180;
			barreiras.addObject(parede2);
			
			var inclinacao1:Rampa_Quadrada = new Rampa_Quadrada();
			inclinacao1.x = 462;
			inclinacao1.y = 102;
			inclinacao1.scaleX = 0.77;
			inclinacao1.scaleY = 0.54;
			inclinacao1.rotation = 180;
			terrenos.addObject(inclinacao1);
			
			var inclinacao2:Rampa_Quadrada = new Rampa_Quadrada();
			inclinacao2.x = 98;
			inclinacao2.y = 298;
			inclinacao2.scaleX = 0.78;
			inclinacao2.scaleY = 0.6;
			inclinacao2.rotation = 0;
			terrenos.addObject(inclinacao2);
			
			var buraco:Buraco = new Buraco();
			buraco.x = 430;
			buraco.y = 343;
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