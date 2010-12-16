package 
{
	import flash.display.Stage;
	import flash.display.MovieClip;
	import flash.text.TextField;
	
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
		private var hole:uint = 0;
				
		public function Scoreboard()
		{
			finalScore = 0;
			totalShots = 0;
			par = new Array(18);
			score = new Array(18);
			/**var txt:TextField = new TextField();
			par.push(txt);
			txt:TextField = new TextField();
			par.push(txt);
			txt:TextField = new TextField();
			par.push(txt);
			txt:TextField = new TextField();
			par.push(txt);
			txt:TextField = new TextField();
			par.push(txt);
			txt:TextField = new TextField();
			par.push(txt);
			txt:TextField = new TextField();
			par.push(txt);
			txt:TextField = new TextField();
			par.push(txt);
			txt:TextField = new TextField();
			par.push(txt);
			txt:TextField = new TextField();
			par.push(txt);/

			
			
			setPar(2);
			setPar(3);
			setPar(3);
			setPar(2);
			setPar(3);
			setPar(3);
			setPar(3);
			setPar(4);
			setPar(2);
			setPar(4);
			/*
			setPar(3);
			setPar(5);
			setPar(4);
			setPar(3);
			setPar(4);
			setPar(2);
			setPar(3);
			setPar(2);*/
			
		}
		
		public function setPar(num:int):void
		{
			par[hole] = num;
			hole++;
			if (hole == Main.nholes) {
				hole = 0;
			}
		}
		
		public function setScore(num:int):void 
		{
			score[hole] = num;
			hole++;
			if (hole == Main.nholes) {
				hole = 0;
			}
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