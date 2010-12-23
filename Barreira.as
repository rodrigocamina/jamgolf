package  
{
	import flash.display.MovieClip;
	/**
	 * ...
	 * @author Rodrigo Camina
	 */
	public class Barreira extends MovieClip
	{
		public var xI:Number;
		public var yI:Number;
		public var xF:Number;
		public var yF:Number;
		public var lastX:Number;
		public var lastY:Number;
		public var lastAngle:Number;
		public var lastScaleX:Number;
		public var lastScaleY:Number;
		public var mywidth:Number;
		public var myheight:Number;
		public var p3:Vector3f;
		public var p2:Vector3f;
		public var p1:Vector3f;

		public function Barreira() 
		{
			width = 28;
			height = 283;
		}
		
		public function init():Barreira
		{
			return this;
		}
		
		public function testaHit(obj:Bola):Boolean {
			if(x!=lastScaleX||y!=lastScaleY||rotation!=lastAngle||scaleX!=lastScaleX||scaleY!=lastScaleY){
			lastX = x;
			lastY = y;
			lastAngle = rotation;
			lastScaleX = scaleX;
			lastScaleY = scaleY;
			xI = obj.trueX - obj.width*obj.scaleX/2;
			yI = obj.trueY - obj.height*obj.scaleY/2;
			xF = obj.trueX + obj.width*obj.scaleX/2;
			yF = obj.trueY + obj.height * obj.scaleY / 2;
			mywidth = 28 * scaleX;
			myheight = 283 * scaleY;
			p3 = new Vector3f();
			p2 = new Vector3f();
			p1 = new Vector3f();
			p1.x = 0;
			p1.y = myheight;
			p2.x = mywidth;
			p2.y = 0;
			p3.x = mywidth;
			p3.y = myheight;
			/*
			trace("normal");
			trace(0 + "," + 0+" r"+rotation);
			trace(p1.x + "," + p1.y+" r"+rotation);
			trace(p2.x + "," + p2.y+" r"+rotation);
			trace(p3.x + "," + p3.y + " r" + rotation);
			*/
			Matrix4x4.rotate(p1, -this.rotation);
			Matrix4x4.rotate(p2, -this.rotation);
			Matrix4x4.rotate(p3, -this.rotation);
			/*
			trace("rotacionado");
			trace(0 + "," + 0+" r"+rotation);
			trace(p1.x + "," + p1.y+" r"+rotation);
			trace(p2.x + "," + p2.y+" r"+rotation);
			trace(p3.x + "," + p3.y+" r"+rotation);*/
			p1.x += x;
			p1.y += y;
			p2.x += x;
			p2.y += y;
			p3.x += x;
			p3.y += y;
			}
			return (linesIntersect(x,y,p1.x,p1.y,xI,yI,xF,yF)||linesIntersect(p2.x,p2.y,p3.x,p3.y,xI,yI,xF,yF)||linesIntersect(x,y,p1.x,p1.y,xI,yF,xF,yI)||linesIntersect(p2.x,p2.y,p3.x,p3.y,xI,yF,xF,yI));
			/*
			if (rotation > 0) {
				if (rotation == 180) {
					linesIntersect(x - mywidth, y - myheight, x, y, xI, yI, xF, yF);
					return (linesIntersect(x, y - myheight, x, y, xI, yI, xF, yF)||linesIntersect(x - mywidth, y - myheight, x - mywidth, y, xI, yI, xF, yF));
				}else {
					//90
					return (linesIntersect(x - myheight, y , x, y, xI, yI, xF, yF)||linesIntersect(x - myheight, y+mywidth , x, y+mywidth, xI, yI, xF, yF));

				}
			}else {
				if (rotation == 0) {
					return (linesIntersect(x , y , x, y+myheight, xI, yI, xF, yF)||linesIntersect(x+mywidth, y, x+mywidth, y+myheight, xI, yI, xF, yF));
				}else {
					//-90
					return (linesIntersect(x, y , x+myheight, y, xI, yI, xF, yF)||linesIntersect(x, y-mywidth , x+myheight, y-mywidth, xI, yI, xF, yF));
				}
			}*/
		}

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