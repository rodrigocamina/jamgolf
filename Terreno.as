package  
{
	import flash.display.MovieClip;
	/**
	 * ...
	 * @author Rodrigo Camina
	 */
	public class Terreno extends MovieClip
	{
		public var velX:Number = 0;
		public var velY:Number = 0;
		public var atrito:Number = 1;
		
		public function Terreno() 
		{
			
		}
		
		public function init(atrito:Number):Terreno
		{
			this.atrito = atrito;
			return this;
		}
		
		public function influencia(bola:Bola) {
			if (atrito == 1) {
				if (rotation > 0) {
				if (rotation == 180) {
					 velX = 0;
					 velY = -0.15;
				}else {
					//90
					 velX = -0.15;
					 velY = 0;
				}
			}else {
				if (rotation == 0) {
					 velX = 0;
					 velY = 0.15;
				}else {
					//-90
					 velX = 0.15;
					 velY = 0;
				}
			}
				bola.vX = (bola.vX+velX);
				bola.vY = (bola.vY+velY);
				bola.velocidadeTemp -= 0.5;
				bola.velocidadeT = (Math.sqrt(( bola.vX * bola.vX) + ( bola.vY* bola.vY)));
				bola.rotation = (180 / Math.PI) * (Math.atan2((bola.vY), (bola.vX)));
			}else {
				trace(bola.vX + "/" + bola.vY + " " + bola.velocidadeT + "/" + bola.rotation+" <?<");
				trace(bola.vX + "/" + bola.vY + " " + bola.velocidadeT + "/" + bola.rotation+" <<");
				if (bola.areia == false) {
					bola.areia = true;
					trace("velhavelocidade " + bola.velocidade);
					bola.velocidade *= atrito;
					trace("novavelocidade " + bola.velocidade);
				}
				trace(bola.vX + "/" + bola.vY + " " + bola.velocidadeT + "/" + bola.rotation);
			}
		}
	}

}