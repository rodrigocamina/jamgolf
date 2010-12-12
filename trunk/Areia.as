package  
{
	/**
	 * ...
	 * @author Rodrigo Camina
	 */
	public class Areia extends Terreno
	{	
		public function Areia() 
		{
			
		}
		
		public function init():Areia 
		{
			this.atrito = 0.6;
			this.tipo = 1;
			return this;
		}
	}

}