Algoritmo JuegoDados
	Definir varDad,varOption,varJugadores Como Entero;
	varJugadores<-0;
	Escribir "Cuantas personas van a jugar: ";Leer varJugadores;
	Escribir "Cuantos dados quieres jugar:";Leer varOption;
	Dimension varDad[varOption];
	Para varJugadores<-0 Hasta varJugadores-1 Con Paso 1 Hacer
		Escribir "Jugador número: ",varJugadores+1;
		Para varOption<-0 Hasta varOption-1 Con Paso 1 Hacer
			varDad[varOption]<-azar(6)+1;
			Escribir varDad[varOption];
		Fin Para
	Fin Para
FinAlgoritmo
