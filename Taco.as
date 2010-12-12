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
		private var oldx:int;
		private var oldy:int;
		private var tempo:int;
		private var bola:Bola;
		public var mystage:Stage;
		
		public function Taco() 
		{
		}
		
		public function init(bola:Bola, mystage:Stage):Taco {
			this.bola = bola;
			this.mystage = mystage;
			mystage.addEventListener(MouseEvent.MOUSE_MOVE, simulateRotation);
			mystage.addEventListener(MouseEvent.CLICK, click);
			return this;
		}
		
		public function simulateRotation(e:MouseEvent):void {
			var angulo:Number = Math.atan2((e.stageY - this.y),(e.stageX - this.x));
			this.rotation = (180 / Math.PI) * angulo + 90;
		}
		
		public function simulate() {
			if (ajustado) {
				if (scaleY > -1) {
					scaleY -= 0.25;
				}else if (scaleY == 0.5) {
					bola.setVelocidade(Math.sqrt(((oldx - this.x) * (oldx - this.x)) + ((oldy - this.y) * (oldy * this.y))));
					bola.rotation = this.rotation;
				}
				trace(scaleY);
			}
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