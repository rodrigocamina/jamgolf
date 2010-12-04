package  
{
	import Scoreboard;
	/**
	 * ...
	 * @author Rodrigo Camiña
	 */
	public class Player 
	{
		private var score:int;
		private var record:int;
		
		public function Player() 
		{
			
		}
		
		public function init():Player
		{
			this.score = 0;
		}
		
		public function getScore():int
		{
			return this.score;
		}
		
		public function setScore(value:int):void 
		{
			this.score = value;
		}
		
		public function update():void
		{
			
		}
	}

}