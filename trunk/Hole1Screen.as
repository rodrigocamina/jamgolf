package  
{
	import flash.display.Stage;
	import flash.events.Event;
	/**
	 * ...
	 * @author jean
	 */
	public class Hole1Screen extends JAMWindow
	{
		var parede:Barreira;
		var buraco:Buraco;
		var taco = new Taco();
		var bola:Bola = new Bola();
		
		public function Hole1Screen(stage:Stage) 
		{
			super(stage);
			
			var hole1:Hole1 = new Hole1();
			var parede:Barreira = new Barreira();
			var buraco = new Buraco();
			
			hole1.x = 0;
			hole1.y = 0;
			addObject(hole1);
			
			//left
			parede = new Barreira;
			parede.x  = 150;
			parede.y += 22;
			parede.scaleY = 1.26;
			parede.scaleX = 0.3;
			barreiras.addObject(parede);
			
			
			parede = new Barreira;
			parede.x  = 365;
			parede.y += 22;
			parede.scaleY = 1.26;
			parede.scaleX = 0.3;
			barreiras.addObject(parede);
			
			
			parede = new Barreira;
			parede.x  = 148;
			parede.y += 28;
			parede.scaleY = 0.805;
			parede.scaleX = 0.3;
			parede.rotation = -90;
			barreiras.addObject(parede);
			
			parede = new Barreira;
			parede.x  = 148;
			parede.y += 382;
			parede.scaleY = 0.805;
			parede.scaleX = 0.3;
			parede.rotation = -90;
			barreiras.addObject(parede);
			/*
			parede = new Barreira;
			parede.x  = 154;
			parede.y += 93;
			barreiras.addObject(parede);
			
			
			//right
			parede = new Barreira;
			
			parede.x  = 370;
			parede.y += 380;
			parede.rotation = 180;
			barreiras.addObject(parede);
			
			parede = new Barreira;
			
			parede.x  = 370;
			parede.y += 310;
			parede.rotation =180
			barreiras.addObject(parede);
			
			//up
			parede = new Barreira;
			parede.rotation = 90;
			parede.scaleX = 0.70;
			parede.scaleY = 0.75;
			parede.x  = 370;
			parede.y += 24;
			barreiras.addObject(parede);
			
			//down
			parede = new Barreira;
			parede.rotation = -90;
			parede.scaleX = 0.70;
			parede.scaleY = 0.75;
			parede.x  = 158;
			parede.y += 377;
			barreiras.addObject(parede);*/
			
			buraco.x = 256;
			buraco.y = 67;
			buraco.scaleX = 0.30;
			buraco.scaleY = 0.30;
			addObject(buraco);
			
			taco.x = 250;
			taco.y = 300;
			taco.init(bola,stage)
			bola.init(this,taco,buraco);
			addObject(bola);
			addObject(taco);
			
			//stage.addEventListener(Event.ENTER_FRAME, currentWindow.update);
			//stage.addEventListener(MouseEvent.MOUSE_UP, currentWindow.mouseUP);
			//stage.addEventListener(MouseEvent.MOUSE_DOWN, currentWindow.mouseDOWN);

		}
		override public function update(evt:Event) {
			taco.simulate();
			bola.update();
		}
		
	}

}