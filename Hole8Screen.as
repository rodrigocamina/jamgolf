package  
{
	import flash.display.Stage;
	import flash.events.Event;
	/**
	 * ...
	 * @author Rodrigo Camina
	 */
	public class Hole8Screen extends JAMWindow
	{
		var taco = new Taco();
		var bola:Bola = new Bola();
		
		public function Hole8Screen(stage:Stage) 
		{
			super(stage);
			var hole8:Hole14 = new Hole14();
			hole8.x = 0;
			hole8.y = 0;
			addObject(hole8);
			
			var parede1:Barreira = new Barreira();
			parede1.x = 100;
			parede1.y = 415;
			parede1.scaleY = 1;
			parede1.rotation = -90;
			barreiras.addObject(parede1);
			
			var parede2:Barreira = new Barreira();
			parede2.x = 395;
			parede2.y = 400;
			parede2.scaleY = 1.8;
			parede2.rotation = 180;
			barreiras.addObject(parede2);
			
			var parede3:Barreira = new Barreira();
			parede3.x = 395;
			parede3.y = -10;
			parede3.scaleY = 0.5;
			parede3.rotation = 90;
			barreiras.addObject(parede3);
			
			var parede4:Barreira = new Barreira();
			parede4.x = 235;
			parede4.y = 0;
			parede4.scaleY = 1.04;
			parede4.rotation = 0;
			barreiras.addObject(parede4);
			
			var parede5:Barreira = new Barreira();
			parede5.x = 95;
			parede5.y = 290;
			parede5.scaleY = 0.5;
			parede5.rotation = 0;
			barreiras.addObject(parede5);
			
			var parede6:Barreira = new Barreira();
			parede6.x = 263;
			parede6.y = 266;
			parede6.scaleY = 0.595;
			parede6.rotation = 90;
			barreiras.addObject(parede6);
			
			var parede7:BarreiraMadeira = new BarreiraMadeira();
			parede7.x = 319;
			parede7.y = 285;
			parede7.scaleX = 0.1;
			parede7.scaleY = 0.2;
			parede7.rotation = 90;
			barreiras.addObject(parede7);
			
			var parede8:BarreiraMadeira = new BarreiraMadeira();
			parede8.x = 263;
			parede8.y = 285;
			parede8.scaleX = 0.1;
			parede8.scaleY = 0.2;
			parede8.rotation = -90;
			barreiras.addObject(parede8);
			
			var parede9:BarreiraMadeira = new BarreiraMadeira();
			parede9.x = 369;
			parede9.y = 155;
			parede9.scaleX = 0.1;
			parede9.scaleY = 0.2;
			parede9.rotation = 90;
			barreiras.addObject(parede9);
			
			var parede10:BarreiraMadeira = new BarreiraMadeira();
			parede10.x = 313;
			parede10.y = 155;
			parede10.scaleX = 0.1;
			parede10.scaleY = 0.2;
			parede10.rotation = -90;
			barreiras.addObject(parede10);
			
			var buraco:Buraco = new Buraco();
			buraco.x = 150;
			buraco.y = 340;
			buraco.scaleX = 0.3;
			buraco.scaleY = 0.3;
			addObject(buraco);
			
			taco.x = 350;
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