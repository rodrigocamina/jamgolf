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
		public var HOLE2SCREEN:int = 2;
		public var HOLE3SCREEN:int = 3;
		public var HOLE4SCREEN:int = 4;
		public var HOLE5SCREEN:int = 5;
		public var HOLE6SCREEN:int = 6;
		public var HOLE7SCREEN:int = 7;
		public var HOLE8SCREEN:int = 8;
		public var HOLE9SCREEN:int = 15;
		public var HOLE12SCREEN:int = 9;
		public var HOLE14SCREEN:int = 10;
		public var powerbar:PowerBar;
		public static var power:Number;
		public static var currentHole = 10;
		public static var holeDone:Boolean = true;
		private var startNext:Boolean = false;
		public static var nholes:int = 18;
		public static var scoreboard:Scoreboard = new Scoreboard();
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			scoreboard.setPars();
			removeEventListener(Event.ADDED_TO_STAGE, init);
			addEventListener(Event.ENTER_FRAME, xkDone);
			scoreboard.x = 0;
			scoreboard.y = 50;
			powerbar.scaleX = 0.5;
		}
		
		
		public function goTo(window:int):void {
			var nextW:JAMWindow;
			switch(window) {
				case SPLASHSCREEN:
					nextW = new SplashScreen(stage);
					break;
				case HOLE1SCREEN:
					nextW = new Hole1Screen(stage);	
					break;	
				case HOLE2SCREEN:
					nextW = new Hole2Screen(stage);
					break;
				case HOLE3SCREEN:
					nextW = new Hole3Screen(stage);
					break;
				case HOLE4SCREEN:
					nextW = new Hole4Screen(stage);
					break;
				case HOLE5SCREEN:
					nextW = new Hole5Screen(stage);
					break;
				case HOLE6SCREEN:
					nextW = new Hole6Screen(stage);
					break;
				case HOLE7SCREEN:
					nextW = new Hole7Screen(stage);
					break;
				case HOLE8SCREEN:
					nextW = new Hole8Screen(stage);
					break;
				case HOLE9SCREEN:
					nextW = new Hole9Screen(stage);
					break;
				case HOLE12SCREEN:
					nextW = new Hole12Screen(stage);
					break;
				case HOLE14SCREEN:
					nextW = new Hole14Screen(stage);
					break;
			}
			if (currentWindow != null) {
				currentWindow.removeAll();
				removeEventListener(Event.ENTER_FRAME, currentWindow.update);
				removeEventListener(MouseEvent.MOUSE_UP, currentWindow.mouseUP);
				removeEventListener(MouseEvent.MOUSE_DOWN, currentWindow.mouseDOWN);
			}
			trace("TESTE");
			currentWindow = nextW;
			addEventListener(Event.ENTER_FRAME, currentWindow.update);
			addEventListener(MouseEvent.MOUSE_UP, currentWindow.mouseUP);
			addEventListener(MouseEvent.MOUSE_DOWN, currentWindow.mouseDOWN);
			
		}
		
		public function xkDone(e:Event) {
			if (holeDone) {
				Main.holeDone = false;
				if (currentHole < 11) {
					if(currentWindow!=null){
					currentWindow.removeAll();
					currentWindow.barreiras.removeAll();
					currentWindow.terrenos.removeAll();
					}
					startNext = true;
				}else {
					trace("FIM DE JOGO");
					currentHole = 1;
					Main.holeDone = true;
				}
			}else if (startNext) {
				startNext = false;
				goTo(currentHole++);
				stage.addChild(scoreboard);
			}
			scoreboard.update();
			powerbar.scaleY = power;
		}
		
	}
	
}