package  
{
	import flash.display.DisplayObjectContainer;
	import flash.display.DisplayObject;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.MouseEvent;
	/**
	 * ...
	 * @author Seink
	 */
	public class JAMWindow extends GerenciadorDeObjetos
	{
		private var stage:Stage;
		public var terrenos:GerenciadorDeObjetos;
		public var barreiras:GerenciadorDeObjetos;
		
		public function JAMWindow(stage:Stage) 
		{
			super(stage);
			this.stage = stage;
			this.terrenos = new GerenciadorDeObjetos(stage);
			this.barreiras = new GerenciadorDeObjetos(stage);
		}
		
		public function update(evt:Event) {
		}
		
		public function mouseUP(evt:MouseEvent) {
			
		}
		
		public function mouseDOWN(evt:MouseEvent) {
			
		}
	}

}