package  
{
	import flash.display.Stage;
	import flash.events.Event;
	/**
	 * ...
	 * @author Rodrigo Camina
	 */
	public class Hole2Screen extends JAMWindow
	{
		var taco = new Taco();
		var bola:Bola = new Bola();
		
		public function Hole2Screen(stage:Stage) 
		{
			super(stage);
			var hole2:Hole6 = new Hole6();
			hole2.x = 0;
			hole2.y = 0;
			addObject(hole2);
			
			var parede1:Barreira = new Barreira();
			parede1.x = 30;
			parede1.y = 400;
			parede1.scaleY = 1.8;
			parede1.rotation = -90;
			barreiras.addObject(parede1);
			
			var parede2:Barreira = new Barreira();
			parede2.x = 560;
			parede2.y = 400;
			parede2.scaleY = 1.8;
			parede2.rotation = 180;
			barreiras.addObject(parede2);
			
			var parede3:Barreira = new Barreira();
			parede3.x = 540;
			parede3.y = 0;
			parede3.scaleY = 1.8;
			parede3.rotation = 90;
			barreiras.addObject(parede3);
			
			var parede4:Barreira = new Barreira();
			parede4.x = 5;
			parede4.y = 0;
			parede4.scaleY = 0.41;
			parede4.rotation = 0;
			barreiras.addObject(parede4);
			
			var parede5:Barreira = new Barreira();
			parede5.x = 5;
			parede5.y = 260;
			parede5.scaleY = 0.5;
			parede5.rotation = 0;
			barreiras.addObject(parede5);
			
			var parede6:Barreira = new Barreira();
			parede6.x = 5;
			parede6.y = 140;
			parede6.scaleY = 1.56;
			parede6.rotation = -90;
			barreiras.addObject(parede6);
			
			var parede7:Barreira = new Barreira();
			parede7.x = 446;
			parede7.y = 235;
			parede7.scaleY = 1.56;
			parede7.rotation = 90;
			barreiras.addObject(parede7);
			
			var parede8:Barreira = new Barreira();
			parede8.x = 448;
			parede8.y = 263;
			parede8.scaleY = 0.536;
			parede8.rotation = 180;
			barreiras.addObject(parede8);
			
			var parede9:BarreiraMadeira = new BarreiraMadeira();
			parede9.x = 533;
			parede9.y = 317;
			parede9.scaleX = 0.2;
			parede9.scaleY = 1.56;
			parede9.rotation = 90;
			barreiras.addObject(parede9);
			
			var parede10:BarreiraMadeira = new BarreiraMadeira();
			parede10.x = 91;
			parede10.y = 317;
			parede10.scaleX = 0.2;
			parede10.scaleY = 1.56;
			parede10.rotation = -90;
			barreiras.addObject(parede10);
			
			var buraco:Buraco = new Buraco();
			buraco.x = 500;
			buraco.y = 348;
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