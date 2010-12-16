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
		public var p1:TextField;
		public var p2:TextField;
		public var p3:TextField;
		public var p4:TextField;
		public var p5:TextField;
		public var p6:TextField;
		public var p7:TextField;
		public var p8:TextField;
		public var p9:TextField;
		public var p10:TextField;
		public var p11:TextField;
		public var p12:TextField;
		public var p13:TextField;
		public var p14:TextField;
		public var p15:TextField;
		public var p16:TextField;
		public var p17:TextField;
		public var p18:TextField;
		public var s1:TextField;
		public var s2:TextField;
		public var s3:TextField;
		public var s4:TextField;
		public var s5:TextField;
		public var s6:TextField;
		public var s7:TextField;
		public var s8:TextField;
		public var s9:TextField;
		public var s10:TextField;
		public var s11:TextField;
		public var s12:TextField;
		public var s13:TextField;
		public var s14:TextField;
		public var s15:TextField;
		public var s16:TextField;
		public var s17:TextField;
		public var s18:TextField;
		private var finalScore:int;
		private var totalShots:uint;
		private var hole:uint = 0;
		private var par:Array;
		private var score:Array;
		public var up:Boolean = false;
				
		public function Scoreboard()
		{
			finalScore = 0;
			totalShots = 0;
			par = new Array();
			par.push(p1);
			par.push(p2);
			par.push(p3);
			par.push(p4);
			par.push(p5);
			par.push(p6);
			par.push(p7);
			par.push(p8);
			par.push(p9);
			par.push(p10);
			par.push(p11);
			par.push(p12);
			par.push(p13);
			par.push(p14);
			par.push(p15);
			par.push(p16);
			par.push(p17);
			par.push(p18);
			score = new Array();
			score.push(s1);
			score.push(s2);
			score.push(s3);
			score.push(s4);
			score.push(s5);
			score.push(s6);
			score.push(s7);
			score.push(s8);
			score.push(s9);
			score.push(s10);
			score.push(s11);
			score.push(s12);
			score.push(s13);
			score.push(s14);
			score.push(s15);
			score.push(s16);
			score.push(s17);
			score.push(s18);

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

			
			
			/*
			setPar(3);
			setPar(5);
			setPar(4);
			setPar(3);
			setPar(4);
			setPar(2);
			setPar(3);
			setPar(2);*/
			
			p1.text = "";
			p2.text = "";
			p3.text = "";
			p4.text = "";
			p5.text = "";
			p6.text = "";
			p7.text = "";
			p8.text = "";
			p9.text = "";
			p10.text = "";
			p11.text = "";
			p12.text = "";
			p13.text = "";
			p14.text = "";
			p15.text = "";
			p16.text = "";
			p17.text = "";
			p18.text = "";
		}
		
		public function setPars() {
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
			setPar(3);
			setPar(2);
			setPar(3);
			setPar(3);
			setPar(3);
			setPar(4);
			setPar(2);
			setPar(4);
		}
		
		public function setPar(num:int):void
		{
			var txtfld:TextField = par[hole] as TextField;
			txtfld.text = num+"";
			hole++;
			if (hole == Main.nholes) {
				hole = 0;
			}
		}
		
		public function setScore(num:int):void 
		{
			if(num>0){
			score[hole].text = num;
			hole++;
			if (hole == Main.nholes) {
				hole = 0;
			}
			}
		}
		
		public function update() {
			if (up) {
				if (y > 50) {
					y -= 5;
					alpha = 0.1;
				}
			}else {
				if (y < 150) {
					y+=5;
				}else {
					alpha = 1;
				}
			}
		}
		/*
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
			
		}*/
	}
	
}