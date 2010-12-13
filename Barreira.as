package  
{
	import flash.display.MovieClip;
	/**
	 * ...
	 * @author Rodrigo Camina
	 */
	public class Barreira extends MovieClip
	{
		private var elasticidade:Number;
		
		public function Barreira() 
		{
			
		}
		
		public function init():Barreira
		{
			this.elasticidade = 0.95;
			return this;
		}
		
		public function testaHit(obj:Bola):Boolean {
			var xI = obj.trueX - obj.width*obj.scaleX/2;
			var yI = obj.trueY - obj.height*obj.scaleY/2;
			var xF = obj.trueX + obj.width*obj.scaleX/2;
			var yF = obj.trueY + obj.height * obj.scaleY / 2;
			var mywidth = 28 * scaleX;
			var myheight = 283 * scaleY;
			if (rotation > 0) {
				if (rotation == 180) {
					return ((x-mywidth<xF&&x>xF)&&(y-myheight<yF&&y>yF)||(x-mywidth<xI&&x>xI)&&(y-myheight<yI&&y>yI));
				}else {
					//90
					return ((x-myheight<xF&&x>xF)&&(y<yF&&y+mywidth>yF)||(x-myheight<xI&&x>xI)&&(y<yI&&y+mywidth>yI));

				}
			}else {
				if (rotation == 0) {
					return ((x<xF&&x+mywidth>xF)&&(y<yF&&y+myheight>yF)||(x<xI&&x+mywidth>xI)&&(y<yI&&y+myheight>yI));
				}else {
					//-90
					return (((x<xF)&&x+myheight>xF)&&(y-mywidth<yF&&y>yF)||(x<xI&&x+myheight>xI)&&(y-mywidth<yI&&y>yI));
				}
			}
		}
	}

	/*
	public function ptLineDistSq(x1:Number, y1:Number, x2:Number, y2:Number, px:Number, py:Number):Number
    {
	// Adjust vectors relative to x1,y1
	// x2,y2 becomes relative vector from x1,y1 to end of segment
	x2 -= x1;
	y2 -= y1;
	// px,py becomes relative vector from x1,y1 to test point
	px -= x1;
	py -= y1;
	var dotprod:Number = px * x2 + py * y2;
	// dotprod is the length of the px,py vector
	// projected on the x1,y1=>x2,y2 vector times the
	// length of the x1,y1=>x2,y2 vector
	var projlenSq:Number = dotprod * dotprod / (x2 * x2 + y2 * y2);
	// Distance to line is now the length of the relative point
	// vector minus the length of its projection onto the line
	var lenSq:Number = px * px + py * py - projlenSq;
	if (lenSq < 0) {
	    lenSq = 0;
	}
	return lenSq;
    }*/
	
	
}