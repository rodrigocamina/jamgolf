package  
{
	/**
	 * ...
	 * @author Rodrigo Camina
	 */
	public class Rampa_Quadrada extends Terreno
	{
		public function Rampa_Quadrada() 
		{
			
		}
		
		public function init():Rampa_Quadrada
		{
			this.atrito = 0.85;
			this.tipo = 2;
			return this;
		}
	}

}