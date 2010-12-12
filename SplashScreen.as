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
			addObject(hole1);
			taco.x = 50;
			taco.y = 50;
			taco.init(bola,stage)
			addObject(taco);
			addObject(bola);
			stage.addEventListener(Event.ENTER_FRAME, update);
			stage.addEventListener(MouseEvent.MOUSE_UP, mouseUP);
			stage.addEventListener(MouseEvent.CLICK, mouseDOWN);
			
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