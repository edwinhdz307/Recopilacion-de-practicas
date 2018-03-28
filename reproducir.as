package  {
	//Importamos las librerias necesarias
	import flash.events.MouseEvent;
	import flash.display.MovieClip;
	import fl.transitions.Tween;
	import fl.transitions.easing.*;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	import flash.ui.Mouse;
	
	public class reproducir extends MovieClip{
		private var cont1:int;
		private var tmp:int = 0;
		private var tiempo:Timer = new Timer(1000, cont1++);

		public function reproducir() {
			//Animamos los datos del alumno en el eje X y en el eje Y al igual que el botón.
			var nombrePractica:Tween = new Tween(recoleccion_txt, "x", Regular.easeIn, 1300, 337.6, 3, true);
			var nombrePractica2:Tween = new Tween(recoleccion_txt, "y", Regular.easeIn, 1100, 21, 3, true);
			var universidad:Tween = new Tween(universidad_txt, "x", Regular.easeIn, -1300, 283.4, 3, true);
			var universidad2:Tween = new Tween(universidad_txt, "y", Regular.easeIn, 1100, 158, 3, true);
			var nombreAlumno:Tween = new Tween(alumno_txt, "x", Regular.easeIn, 1300, 266.4, 3, true);
			var nombreAlumno2:Tween = new Tween(alumno_txt, "y", Regular.easeIn, 1100, 295, 3, true);
			var matricula:Tween = new Tween(matricula_txt, "x", Regular.easeIn, -1300, 424.4, 3, true);
			var matricula2:Tween = new Tween(matricula_txt, "y", Regular.easeIn, 1100, 433, 3, true);
			var maestro:Tween = new Tween(maestro_txt, "x", Regular.easeIn, 1300, 194.4, 3, true);
			var maestro2:Tween = new Tween(maestro_txt, "y", Regular.easeIn, 1100, 571, 3, true);
			var empezar:Tween = new Tween(empezar_btn, "x", Regular.easeIn, -1300, 953.4, 3, true);
			var empezar2:Tween = new Tween(empezar_btn, "y", Regular.easeIn, 1100, 730, 3, true);
			empezar_btn.addEventListener(MouseEvent.CLICK, sig);
		}
		
		//Funcion para pasar al siguiente fotograma
		public function sig(event:MouseEvent):void{
			var nombrePractica:Tween = new Tween(recoleccion_txt, "x", Regular.easeIn, 337.6, 1330, 3, true);
			var nombrePractica2:Tween = new Tween(recoleccion_txt, "y", Regular.easeIn, 21, 1100, 3, true);
			var universidad:Tween = new Tween(universidad_txt, "x", Regular.easeIn, 283.4, -1200, 3, true);
			var universidad2:Tween = new Tween(universidad_txt, "y", Regular.easeIn, 158, 1100, 3, true);
			var nombreAlumno:Tween = new Tween(alumno_txt, "x", Regular.easeIn, 266.4, 1300, 3, true);
			var nombreAlumno2:Tween = new Tween(alumno_txt, "y", Regular.easeIn, 295, 1100, 3, true);
			var matricula:Tween = new Tween(matricula_txt, "x", Regular.easeIn, 424.4, -1300, 3, true);
			var matricula2:Tween = new Tween(matricula_txt, "y", Regular.easeIn, 433, 1100, 3, true);
			var maestro:Tween = new Tween(maestro_txt, "x", Regular.easeIn, 194.40, 1300, 3, true);
			var maestro2:Tween = new Tween(maestro_txt, "y", Regular.easeIn, 571, 1100, 3, true);
			var empezar:Tween = new Tween(empezar_btn, "x", Regular.easeIn, 953.4, -1300, 3, true);
			var empezar2:Tween = new Tween(empezar_btn, "y", Regular.easeIn, 730, 1100, 3, true);
			tiempo.start();
			tiempo.addEventListener(TimerEvent.TIMER, tiempoMover);
		}
		
		public function tiempoMover(event:TimerEvent):void{
			tmp++
			if(tmp == 3){
				gotoAndStop(2);
				tiempo.stop();
				moverCosas();
				practicas_txt.addEventListener(MouseEvent.CLICK, practicasNormales);
			} 
		}
		
		public function practicasNormales(event:MouseEvent){
			var moverLinea:Tween = new Tween(mover_txt, "y", None.easeIn, mover_txt.y, 273.40, 5, true);
		}
		
		public function pracClas(event:MouseEvent):void{
			var moverLinea:Tween = new Tween(mover_txt, "y", None.easeIn, mover_txt.y, 352, 5, true);
		}
		
		public function moverCosas(){
			var hm:Tween = new Tween(hm_txt, "x", Regular.easeInOut, -1000, 15, 3, true);
			var practicas:Tween = new Tween(practicas_txt, "x", Regular.easeInOut, -1000, 66, 3, true);
			var clases:Tween = new Tween(clases_txt, "x", Regular.easeInOut, -500, 66, 3, true);
			var juegos:Tween = new Tween(juegos_txt, "x", Regular.easeInOut, -500, 74, 3, true);
			var videos:Tween = new Tween(videos_txt, "x", Regular.easeInOut, -500, 66, 3, true);
			var imagenes:Tween = new Tween(imagenes_txt, "x", Regular.easeInOut, -500, 74, 3, true);
			var tituloPrac:Tween =  new Tween(tituloPractica_txt, "y", Regular.easeInOut, -200, 21, 3, true);
			var practica1:Tween =  new Tween(practica1_txt, "y", Regular.easeInOut, -200, 272, 3, true);
			var practica2:Tween =  new Tween(practica2_txt, "y", Regular.easeInOut, -200, 272, 3, true);
			var practica3:Tween =  new Tween(practica3_txt, "y", Regular.easeInOut, -200, 429.05, 3, true);
			var practica4:Tween =  new Tween(practica4_txt, "y", Regular.easeInOut, -200, 584.8, 3, true);
			var practica5:Tween =  new Tween(practica5_txt, "y", Regular.easeInOut, -200, 584.8, 3, true);
			var practica6:Tween =  new Tween(practica6_txt, "y", Regular.easeInOut, -200, 758.4, 3, true);
			var lin:Tween =  new Tween(linea, "y", Regular.easeInOut, -1500, 0, 3, true);
			var lineaMov:Tween =  new Tween(mover_txt, "y", Regular.easeInOut, -200, 271, 3, true);
		}
		
		public function practicasClases(){
			
		}

	}
	
}
