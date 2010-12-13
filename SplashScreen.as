package  
{
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.MouseEvent;
	/**
	 * ...
	 * @author Seink
	 */
	public class SplashScreen extends JAMWindow
	{
		
		var taco = new Taco();
		var bola:Bola = new Bola();
		public function SplashScreen(stage:Stage) 
		{
			super(stage);
			var hole1:Hole1 = new Hole1();
			hole1.x = 0;
			hole1.y = 0;
			taco.x = 50;
			taco.y = 50;
			taco.init(bola,stage)
			bola.init(this,taco);
			stage.addEventListener(Event.ENTER_FRAME, update);
			stage.addEventListener(MouseEvent.MOUSE_UP, mouseUP);
			stage.addEventListener(MouseEvent.CLICK, mouseDOWN);
			
			addObject(hole1);
			
			
			var b:Barreira = new Barreira();
			b.x = 400;
			b.y = 0;
			b.scaleY=5;
			b.rotation = 0;
			barreiras.addObject(b);
			b = new Barreira();
			b.x = 0;
			b.y = 0;
			b.scaleY=5;
			b.rotation = 0;
			barreiras.addObject(b);
			b = new Barreira();
			b.x = 10;
			b.y = 10;
			b.scaleY=5;
			b.rotation = -90;
			barreiras.addObject(b);
			b = new Barreira();
			b.x = 0;
			b.y = 300;
			b.scaleY=5;
			b.rotation = -90;
			barreiras.addObject(b);
			addObject(bola);
			addObject(taco);
		}
		
		override public function update(evt:Event) {
			trace("Update");
			taco.simulate();
			bola.update();
		}
		
		override public function mouseUP(evt:MouseEvent) {
			trace("mouseUp");
		}
		
		override public function mouseDOWN(evt:MouseEvent) {
			trace("mouseDown");
			
		}
		
	}

}