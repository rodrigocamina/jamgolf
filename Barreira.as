package  
{
	import flash.display.MovieClip;
	/**
	 * ...
	 * @author Rodrigo Camina
	 */
	public class Barreira extends MovieClip
	{
		private var elasticidade:Number;
		
		public function Barreira() 
		{
			
		}
		
		public function init():Barreira
		{
			this.elasticidade = 0.95;
			return this;
		}
	}

}