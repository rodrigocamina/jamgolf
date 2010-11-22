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
		
		public function JAMWindow(stage:Stage) 
		{
			super(stage);
			this.stage = stage;
		}
		
		public function update(evt:Event) {
			super.update();
		}
		
		public function mouseUP(evt:MouseEvent) {
			
		}
		
		public function mouseDOWN(evt:MouseEvent) {
			
		}
	}

}