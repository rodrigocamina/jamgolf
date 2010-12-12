package  
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.ui.MouseCursor;
	
	/**
	 * ...
	 * @author jean
	 */
	
	public class Taco extends MovieClip
	{
		private var taco:Taco;
		private var clickRight:Boolean = false;
		private var oldx:int;
		private var tempo:int;
		
		public function Taco() 
		{
			addChild(taco);	
			stage.addEventListener(MouseEvent.MOUSE_MOVE, game);
			stage.addEventListener(MouseEvent.CLICK, click);
		}
		
		function game(e:MouseEvent):void {
			tempo += 1;
			var angulo:Number = Math.atan2((e.stageY - taco.y),(e.stageX - taco.x));
			taco.rotation = (180 / Math.PI) * angulo + 90;
			oldx = taco.x;
			
			if (clickRight == true) {
				clickRight = false;
				trace("boi tt");
			}
			
			if (tempo > 10) {
			taco.x = oldx;
			clickRight = false;
			}
			
		}
		
		function click(e:MouseEvent):void {
				
			if (e.type == MouseEvent.CLICK ) {
				clickRight = true;
				
			}
		}
		
	}
}