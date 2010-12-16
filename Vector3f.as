package  
{
	/**
	 * ...
	 * @author Seink
	 */
	public class Vector3f
	{
		public var x:Number =0;
		public var y:Number =0;
		public var z:Number =0;
		
		public function Vector3f() 
		{
			
		}
		
		public function copyTo(v:Vector3f) {
			v.x = x;
			v.y = y;
			v.z = z;
		}
	}

}