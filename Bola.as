package  
{
	/**
	 * ...
	 * @author Rodrigo Camina
	 */
	public class Bola
	{
		private var velocidade:int;
		private var direcao:int;
		
		public function Bola()
		{
			
		}
		
		public function init():Bola
		{
			this.velocidade = 0;
			this.direcao = 0;
		}
		
		public function getVelocidade():int
		{
			return this.velocidade;
		}
		
		public function setVelocidade(velocidade:int):void 
		{
			this.velocidade = velocidade;
		}
		
		public function getDirecao():int
		{
			return this.direcao;
		}
		
		public function setDirecao(direcao:int):void
		{
			this.direcao = direcao;
		}
		
		public function calculaVelocidade(terreno:Terreno):void
		{
			if (terreno.tipo == 0 ou terreno.tipo == 1)
			{
				this.velocidade *= terreno.atrito;
			}
			else if (terreno.tipo == 2 ou terreno.tipo == 3)
			{
				this.velocidade = (this.velocidade * terreno.atrito * terreno.inclinacao);
			}
		}
	}

}