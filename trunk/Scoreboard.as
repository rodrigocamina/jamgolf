package 
{
	import flash.display.Stage;
	import flash.display.MovieClip;
	
	/**
	 * ...
	 * @author Rodrigo Camina
	 */
	public class Scoreboard extends MovieClip
	{
		private var par:Array;
		private var score:Array;
		private var finalScore:int;
		private var totalShots:uint;
				
		public function Scoreboard()
		{
			finalScore = 0;
			totalShots = 0;
			par = new Array(18);
			score = new Array(18);
			setPar(2, 0);
			setPar(3, 1);
			setPar(3, 2);
			setPar(2, 3);
			setPar(3, 4);
			setPar(3, 5);
			setPar(3, 6);
			setPar(4, 7);
			setPar(2, 8);
			setPar(4, 9);
			setPar(3, 10);
			setPar(5, 11);
			setPar(4, 12);
			setPar(3, 13);
			setPar(4, 14);
			setPar(2, 15);
			setPar(3, 16);
			setPar(2, 17);
			
		}
		
		public function setPar(num:int, hole:int):void
		{
			par[hole] = num;
		}
		
		public function setScore(num:int, hole:int):void 
		{
			score[hole] = num;
		}
		
		public function setFinalScore():void
		{
			for (var i:uint = 0; i < 18; i++)
			{
				finalScore += (score[i] - par[i]);
			}
		}
		
		public function getTotalShots():uint
		{
			totalShots = 0;
			for (var i:uint = 0; i < 18; i++)
			{
				totalShots += score[i];
			}
			return totalShots;
		}
		
		public function update():void
		{
			
		}
	}
	
}