package  
{
	import flash.display.Stage;
	/**
	 * ...
	 * @author jean
	 */
	public class Hole9Screen extends JAMWindow
	{
		
		public function Hole9Screen(stage:Stage) 
		{
			super(stage);
			var parede:Barreira = new Barreira;
			var hole9:Hole9 = new Hole9;
			var buraco:Buraco = new Buraco;
			var areia:Areia = new Areia;
			var barreiraMadeira:BarreiraMadeira;
			
			hole9.x = 0;
			hole9.y = 0;
			addObject(hole9);
			
			//left
			parede = new Barreira;
			parede.scaleX = 0.8;
			parede.scaleY = 0.65;
			parede.rotation = 0;
			parede.x  =30;
			parede.y  = 20;
			barreiras.addObject(parede);
			
			parede = new Barreira;
			parede.scaleX = 0.8;
			parede.scaleY = 0.55;
			parede.rotation = 0;
			parede.x  = 286;
			parede.y  = 204;
			barreiras.addObject(parede);
			
			//up
			parede = new Barreira;
			parede.scaleX = 0.8;
			parede.scaleY = 0.43;
			parede.rotation = 90;
			parede.x  =153;
			parede.y  = 18;
			barreiras.addObject(parede);
			
			parede = new Barreira;
			parede.scaleX = 0.8;
			parede.scaleY = 0.85;
			parede.rotation = 90;
			parede.x  = 390;
			parede.y  = 121;
			barreiras.addObject(parede);
			
			parede = new Barreira;
			parede.scaleX = 0.8;
			parede.scaleY = 0.43;
			parede.rotation = 90;
			parede.x  = 507;
			parede.y  = 280;
			barreiras.addObject(parede);
			
			//down
			parede = new Barreira;
			parede.scaleX = 0.8;
			parede.scaleY = 0.78;
			parede.rotation = -90;
			parede.x  =285;
			parede.y  = 375;
			barreiras.addObject(parede);
			
			parede = new Barreira;
			parede.scaleX = 0.8;
			parede.scaleY = 0.98;
			parede.rotation = -90;
			parede.x  = 30;
			parede.y  = 225;
			barreiras.addObject(parede);
			
			//ringht
			parede = new Barreira;
			parede.scaleX = 0.8;
			parede.scaleY = 0.45;
			parede.rotation = 180;
			parede.x  =170;
			parede.y  = 145;
			barreiras.addObject(parede);
			
			parede = new Barreira;
			parede.scaleX = 0.8;
			parede.scaleY = 0.64;
			parede.rotation = 180;
			parede.x  = 400;
			parede.y  = 303;
			barreiras.addObject(parede);
			
			parede = new Barreira;
			parede.scaleX = 0.8;
			parede.scaleY = 0.33;
			parede.rotation = 180;
			parede.x  = 520;
			parede.y  = 375;
			barreiras.addObject(parede);
			
			//buraco
			buraco.x = 473;
			buraco.y = 330;
			buraco.scaleX = 0.30;
			buraco.scaleY = 0.30;
			addObject(buraco); 
			
			//barreira de madeira
			barreiraMadeira = new BarreiraMadeira();
			barreiraMadeira.x = 101;
			barreiraMadeira.y = 122;
			barreiraMadeira.scaleX = 0.4;
			barreiraMadeira.scaleY = 0.4;
			
			
		}
		
	}

}