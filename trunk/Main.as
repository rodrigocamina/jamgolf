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
		
		public var SPLASHSCREEN:int = 0;
		public var HOLE1SCREEN:int = 1;
		
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
		
		
		public function goTo(window:int):void {
			var nextW:JAMWindow;
			switch(window) {
				case SPLASHSCREEN:
					nextW = new SplashScreen(stage);
				case HOLE1SCREEN:
					nextW = new Hole1Screen(stage);				
			}
			if (currentWindow != null) {
				currentWindow.removeAll();
				stage.removeEventListener(Event.ENTER_FRAME, currentWindow.simulate);
				stage.removeEventListener(MouseEvent.MOUSE_UP, currentWindow.mouseUP);
				stage.removeEventListener(MouseEvent.MOUSE_DOWN, currentWindow.mouseDOWN);
			}
			currentWindow = nextW;
			stage.addEventListener(Event.ENTER_FRAME, currentWindow.simulate);
			stage.addEventListener(MouseEvent.MOUSE_UP, currentWindow.mouseUP);
			stage.addEventListener(MouseEvent.CLICK, currentWindow.mouseDOWN);
			
		}
	}
	
}