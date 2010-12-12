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
		
		public function SplashScreen(stage:Stage) 
		{
			super(stage);
			var hole1:Hole1 = new Hole1();
			hole1.x = 150;
			hole1.y = 350;
			addObject(hole1);
			barreiras.addObject(barreira1);
			terrenos.addObject(areia);
			
		}
		
		override public function update(evt:Event) {
			
		}
		
		override public function mouseUP(evt:MouseEvent) {
			
		}
		
		override public function mouseDOWN(evt:MouseEvent) {
			
		}
		
	}

}