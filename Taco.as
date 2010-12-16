package  
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	/**
	 * ...
	 * @author jean
	 */
	
	public class Taco extends MovieClip
	{
		private var ajustado:Boolean = false;
		public var tacado:Boolean = false;
		private var oldx:int;
		private var oldy:int;
		private var tempo:int;
		private var bola:Bola;
		public var mystage:Stage;
		public var ntacadas:int;
		
		public function Taco() 
		{
		}
		
		public function init(bola:Bola, mystage:Stage):Taco {
			this.bola = bola;
			bola.scaleX = 0.2;
			bola.scaleY = 0.2;
			bola.x = x;
			bola.y = y;
			this.mystage = mystage;
			mystage.addEventListener(MouseEvent.MOUSE_MOVE, simulateRotation);
			mystage.addEventListener(MouseEvent.CLICK, click);
			return this;
		}
		
		public function simulateRotation(e:MouseEvent):void {
			var angulo:Number = Math.atan2((e.stageY - this.y),(e.stageX - this.x));
			this.rotation = (180 / Math.PI) * angulo + 90;
			if (e.stageY < 50) {
				Main.scoreboard.up = false;
			}else {
				Main.scoreboard.up = true;
			}
		}
		
		public function simulate() {
			if (ajustado) {
				if (scaleY > -1) {
					scaleY -= 0.25;
				}
				if (scaleY < 0&&!tacado) {
					tacado = true;
					ntacadas++;
					var difX:Number = (oldx - this.x);
					var difY:Number = (oldy - this.y);
					var total:Number = ( difX * difX) + ( difY* difY);
					bola.setVelocidade((Math.sqrt(total))/5.0);
					bola.rotation = this.rotation-90;
				}
			}
		}
		
		public function reset() {
			this.x = bola.x;
			this.y = bola.y;
			ajustado = false;
			tacado = false;
			scaleY = 1;
			mystage.addEventListener(MouseEvent.MOUSE_MOVE, simulateRotation);
			mystage.addEventListener(MouseEvent.CLICK, click);
		}
		
		public function click(e:MouseEvent):void {
			if (e.type == MouseEvent.CLICK ) {
				ajustado = true;
				oldx = e.stageX;
				oldy = e.stageY;
				mystage.removeEventListener(MouseEvent.CLICK, click);
				mystage.removeEventListener(MouseEvent.MOUSE_MOVE, simulateRotation);
			}
		}
		
	}
}