package  
{
	/**
	 * ...
	 * @author Rodrigo Camina
	 */
	public class Rampa_Triangular extends Terreno
	{
		public function Rampa_Triangular() 
		{
			
		}
		
		public function init():Rampa_Triangular
		{

			this.atrito = 0.85;
			this.tipo = 3;
			return this;
		}
		
	}

}