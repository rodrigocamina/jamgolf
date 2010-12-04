package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	
	/**
	 * ...
	 * @author Seink
	 */
	public class Main extends Sprite 
	{
		var currentWindow:JAMWindow;
		
		public final SPLASHSCREEN:int = 0;
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			goTo(SPLASHSCREEN);
		}
		
		
		public void goTo(int window) {
			var nextW:JAMWindow;
			switch(window) {
				case SPLASHSCREEN:
					nextW = new SplashScreen();
				case 1:
				
			}
			if (currentWindow != null) {
				removeEventListener(Event.ENTER_FRAME, currentWindow.update);
				removeEventListener(MouseEvent.MOUSE_UP, currentWindow.mouseUP);
				removeEventListener(MouseEvent.MOUSE_DOWN, currentWindow.mouseDOWN);
			}
			currentWindow = nextW;
			addEventListener(Event.ENTER_FRAME, currentWindow.update);
			addEventListener(MouseEvent.MOUSE_UP, currentWindow.mouseUP);
			addEventListener(MouseEvent.MOUSE_DOWN, currentWindow.mouseDOWN);
			
		}
	}
	
}