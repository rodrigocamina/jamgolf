package  
{
	import flash.display.MovieClip;
	/**
	 * ...
	 * @author Rodrigo Camina
	 */
	public class Bola extends MovieClip
	{
		private var velocidade:int;
		private var direcao:int;
		private var trueX:Number;
		private var trueY:Number;
		private var field:JAMWindow;
		
		
		public function Bola()
		{
			
		}
		
		public function init():Bola
		{
			this.velocidade = 0;
			this.direcao = 0;
		}
		
		public function setVelocidade(velocidade:int):void 
		{
			this.velocidade = velocidade;
		}
		
		public function setDirecao(direcao:int):void
		{
			this.direcao = direcao;
		}
		
		public function update():void {
			var rad:Number = Math.PI * this.rotation / 180;
			var trueX = this.trueX+ Math.cos(rad)*velocidade;
			var trueY = this.trueY + Math.sin(rad) * velocidade;
			this.x = (int) trueX;
			this.y = (int) trueY;
			for (var i:int; i < field.barreiras.total(); i++) {
				var barreira:Barreira = field.barreiras.getObject(i) as Barreira;
				if (hitTestObject(barreira)) {
					var rot:Number = this.rotation + (barreira.rotation - this.rotation) * 2;
					if (rot > 180) {
						rot -= 360;
					}else if (rot < -180) {
						rot += 360;
					}
					this.rotation = rot;
					var rad:Number = Math.PI * this.rotation / 180;
					var trueX = this.trueX+ Math.cos(rad)*velocidade;
					var trueY = this.trueY + Math.sin(rad) * velocidade;
					this.x = (int) trueX;
					this.y = (int) trueY;
				}
			}
		}
		
		public function calculaVelocidade(terreno:Terreno):void
		{
			if (terreno.tipo == 0 || terreno.tipo == 1)
			{
				this.velocidade *= terreno.atrito;
			}
			else if (terreno.tipo == 2 || terreno.tipo == 3)
			{
				this.velocidade = (this.velocidade * terreno.atrito * terreno.inclinacao);
			}
		}
	}

}