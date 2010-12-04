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
		
		public function init(direcao:int, inclinacao:int):Rampa_Quadrada
		{
			this.direcao = direcao;
			this.inclinacao = inclinacao;
			this.atrito = 0.85;
			this.tipo = 2;
		}
	}

}