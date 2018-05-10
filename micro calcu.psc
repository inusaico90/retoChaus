Algoritmo ej_Asign
	Definir varA1, varA2, varA3,varA4 como Entero;
	Escribir "por favor define 3 variables";
	varA1<-0;varA2<-0;varA3<-0;varA4<-0;
	Leer varA1,varA2,varA3;
	Escribir "1 para suma, 2 para resta, 3 para multiplicar, 4 para dividir";Leer varA4;
	Segun varA4 Hacer
		1:
			Escribir varA1+varA2+varA3;
		2:
			Escribir varA1-varA2-varA3;
		3:
			Escribir varA1*varA2*varA3;
		4:
			Escribir varA1/varA2/varA3;
		De Otro Modo:
			Escribir "HOLA ;) :3";
	Fin Segun
FinAlgoritmo
