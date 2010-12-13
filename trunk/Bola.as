package  
{
	import flash.display.MovieClip;
	/**
	 * ...
	 * @author Rodrigo Camina
	 */
	public class Bola extends MovieClip
	{
		private var velocidade:Number;
		public var velocidadeT:Number;
		private var direcao:int;
		public var oldX:Number;
		public var oldY:Number;
		public var trueX:Number;
		public var trueY:Number;
		public var vX:Number;
		public var vY:Number;
		private var field:JAMWindow;
		private var taco:Taco;
		
		
		public function Bola()
		{
			stop();
		}
		
		public function init(field:JAMWindow,taco:Taco):Bola
		{
			this.velocidade = 0;
			this.direcao = 0;
			this.field = field;
			trueX = x;
			trueY = y;
			this.taco = taco;
			return this;
		}
		
		public function setVelocidade(velocidade:int):void 
		{
			if (velocidade > 30) {
				this.velocidade = 30;
			}else {
				this.velocidade = velocidade;
			}
			play();
		}
		
		public function setDirecao(direcao:int):void
		{
			this.direcao = direcao;
		}
		
		public function update():void {
			if (velocidade > 0.1) {
				var velocidadeTemp:Number = velocidade * 0.95;
				var rad:Number = Math.PI * this.rotation / 180;
				
				//faz verificacao a cada 5 passos
				trace("Velocidade " + velocidade);
				var bateuAntes:Barreira = null;
				while (velocidadeTemp > 0) {
					var bateu:Barreira = null;
					if (velocidadeTemp > 1) {
						velocidadeT = 1;
					}else {
						//velocidadeT = velocidadeTemp;
						break;
					}
					velocidadeTemp -= velocidadeT;
					oldX = this.trueX;
					oldY = this.trueY;
					
					vX = Math.cos(rad);
					vY = Math.sin(rad);
					
					this.trueX += vX * velocidadeT;
					this.trueY += vY * velocidadeT;
					var i:int;
					for (i=0; i < field.terrenos.total(); i++) {
						var terreno:Terreno = field.terrenos.getObject(i) as Terreno;
						if (hitTestObject(terreno)) {
							terreno.influencia(this);
						}
					}
					this.trueX = oldX + vX * velocidadeT;
					this.trueY = oldY + vY * velocidadeT;
					for (i=0; i < field.barreiras.total(); i++) {
						var barreira:Barreira = field.barreiras.getObject(i) as Barreira;
						if (barreira.testaHit(this)&&barreira!=bateuAntes) {
							trace("RotAntes" + rotation);
							trace("barreira.rotation " + barreira.rotation);
							var dif:Number = barreira.rotation - 90 - this.rotation;
							trace("dif "+dif);
							var rot:Number = this.rotation + (dif) * 2;
							
							if (rot > 180) {
								rot -= 360;
							}else if (rot < -180) {
								rot += 360;
							}
							this.rotation = rot;
							trace("RotDepois" + rotation);
							rad = Math.PI * this.rotation / 180;
							vX = Math.cos(rad);
							vY = Math.sin(rad);
							this.trueX = oldX + vX * velocidadeT;
							this.trueY = oldY + vY * velocidadeT;
							if (barreira.testaHit(this)) {
								trace("TRANCO!");
							}
							bateu = barreira;
							break;
						}
					}
					bateuAntes = bateu;
					trace("---");
				}
				this.x = this.trueX;
				this.y = this.trueY;
				velocidade = velocidade -= 0.3;
			}else {
				stop();
				if (taco.tacado) {
					taco.reset();
				}
			}
		}
		
		/*
		public function linesIntersect(x1:Number, y1:Number,
    		x2:Number, y2:Number,
    		x3:Number, y3:Number,
    		x4:Number, y4:Number):Boolean{
			return ((relativeCCW(x1, y1, x2, y2, x3, y3) *
					relativeCCW(x1, y1, x2, y2, x4, y4) <= 0)
					&& (relativeCCW(x3, y3, x4, y4, x1, y1) *
					relativeCCW(x3, y3, x4, y4, x2, y2) <= 0));
		}

		public function relativeCCW(x1:Number, y1:Number,
    		x2:Number, y2:Number,
    		px:Number, py:Number):int{
			x2 -= x1;
			y2 -= y1;
			px -= x1;
			py -= y1;
			var ccw:Number = px * y2 - py * x2;
			if (ccw == 0.0) {
				// The point is colinear, classify based on which side of
				// the segment the point falls on.  We can calculate a
				// relative value using the projection of px,py onto the
				// segment - a negative value indicates the point projects
				// outside of the segment in the direction of the particular
				// endpoint used as the origin for the projection.
				ccw = px * x2 + py * y2;
				if (ccw > 0.0) {
					// Reverse the projection to be relative to the original x2,y2
					// x2 and y2 are simply negated.
					// px and py need to have (x2 - x1) or (y2 - y1) subtracted
					//    from them (based on the original values)
					// Since we really want to get a positive answer when the
					//    point is "beyond (x2,y2)", then we want to calculate
					//    the inverse anyway - thus we leave x2 & y2 negated.
					px -= x2;
					py -= y2;
					ccw = px * x2 + py * y2;
					if (ccw < 0.0) {
						ccw = 0.0;
					}
				}
			}
			return (ccw < 0.0) ? -1 : ((ccw > 0.0) ? 1 : 0);
		}
		*/
		
		
		
	}

}