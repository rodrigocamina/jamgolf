package  
{
	/**
	 * ...
	 * @author Seink
	 */
	public class Hole1Screen extends JAMWindow
	{
		
		public function Hole1Screen(stage:Stage) 
		{
			super(stage);
			//pode criar a partir daqui....
			var hole = new Hole1();
			hole.x = 0;
			hole.y = 0;
			addObject(hole);
		}
		
	}

}