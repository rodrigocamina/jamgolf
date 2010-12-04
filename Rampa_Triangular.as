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
		
		public function init(direcao:int, inclinacao:int):Rampa_Triangular
		{
			this.direcao = direcao;
			this.inclinacao = inclinacao;
			this.atrito = 0.85;
			this.tipo = 3;
		}
		
	}

}