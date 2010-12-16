package  
{
	/**
	 * ...
	 * @author Seink
	 */
	public class Matrix4x4
	{
		var m00:Number = 1;
		var m01:Number = 0;
		var m02:Number = 0;
		var m03:Number = 0;
		var m10:Number = 0;
		var m11:Number = 1;
		var m12:Number = 0;
		var m13:Number = 0;
		var m20:Number = 0;
		var m21:Number = 0;
		var m22:Number = 1;
		var m23:Number = 0;
		var m30:Number = 0;
		var m31:Number = 0;
		var m32:Number = 0;
		var m33:Number = 1;
		
		public function Matrix4x4() 
		{
			
		}
		
		public function setRotateZ(ang:Number):Matrix4x4    {
			var cosAng:Number;
			var sinAng:Number;

		    cosAng = Math.cos(ang*0.0174532);
		    sinAng = Math.sin(ang*0.0174532);

		    m00 = cosAng;
		    m01 = sinAng;
		    m02 = 0;
		    m03 = 0;
		    m10 = -sinAng;
		    m11 = cosAng;
		    m12 = 0;
		    m13 = 0;
		    m20 = 0;
		    m21 = 0;
		    m22 = 1;
		    m23 = 0;
		    m30 = 0;
		    m31 = 0;
		    m32 = 0;
		    m33 = 1;
		    return this;
		} 
		
		public function transform(v:Vector3f):void{
			if (v==null) {
			trace("Matrix4x4.transform v==null");
			return;
			}
			var temp:Vector3f = new Vector3f();
			temp.x = v.x;
			temp.y = v.y;
			temp.z = v.z;
			v.x = (m00 * temp.x + m01 * temp.y + m02 * temp.z + m03);
			v.y = (m10 * temp.x + m11 * temp.y + m12 * temp.z + m13);
			v.z = (m20 * temp.x + m21 * temp.y + m22 * temp.z + m23);
		}
		
		public static function rotate(vec:Vector3f, angle:Number) {
			var m:Matrix4x4 = new Matrix4x4();
			m.setRotateZ(angle);//*180 / Math.PI
			m.transform(vec);
		}
	}

}