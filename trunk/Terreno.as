package  
{
	import flash.display.MovieClip;
	/**
	 * ...
	 * @author Rodrigo Camina
	 */
	public class Terreno extends MovieClip
	{
		public var velX:Number;
		public var velY:Number;
		public var atrito:Number;
		
		public function Terreno() 
		{
			
		}
		
		public function init(vX:Number, vY:Number, atrito:Number):Terreno
		{
			this.velX = vX;
			this.velY = vY;
			this.atrito = atrito;
			return this;
		}
		
		public function influencia(bola:Bola) {
			bola.vX = (bola.vX+velX)*atrito;
			bola.vY = (bola.vY+velY)*atrito;
			bola.velocidadeT = (Math.sqrt(( bola.vX * bola.vX) + ( bola.vY* bola.vY)));
			bola.rotation = (180 / Math.PI) * (Math.atan2((bola.vX),(bola.vY)));
		}
	}

}