package  
{
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;
	/**
	 * ...
	 * @author Seink
	 */
	public class GerenciadorDeObjetos
	{
		private var arrayDeDisplayObjects:Array = new Array();
		private var stage:DisplayObjectContainer;
		
		public function GerenciadorDeObjetos(stage:DisplayObjectContainer) 
		{
			this.stage = stage;
		}
		
		public function getObject(n:int):DisplayObject {
			return arrayDeDisplayObjects[n];
		}
		
		public function addObject(obj:DisplayObject):void {
			arrayDeDisplayObjects.push(obj);
			stage.addChild(obj);
		}
		
		public function remove(obj:DisplayObject):Boolean {
			var indice:int = arrayDeDisplayObjects.indexOf(obj);
			if (indice > -1) {
				arrayDeDisplayObjects.splice(indice, 1);
				stage.removeChild(obj);
				return true;
			}
			return false;
		}
		
		public function removeInactives() {
			for each(var obj:DisplayObject in arrayDeDisplayObjects) {
				if (obj.estaInativa()){
					remove(obj);
				}
			}
		}
		
		public function update():void {
			for each(var obj:DisplayObject in arrayDeDisplayObjects) {
				obj.update();
			}
		}
		
		public function total():int {
			return arrayDeDisplayObjects.length;
		}
		
	}

}