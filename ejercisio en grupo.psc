//decimas: 2
//Leer numeros reales hasta que el usuario diga que no quiere leer más
// Imprimir los números ingresados y su valor absoluto

Algoritmo trabajo_parejas
	Definir varContador como entero;
	Definir varNum como real;
	Definir varDesición Como caracter;
	Dimension varNum[1000];
	Definir varPosi Como Entero;
	varPosi=-1;
	Repetir
		Para varContador<-0 Hasta 1000 Con Paso 1 Hacer
			Escribir "Ingrese el número";
			Leer varNum[varContador];
			Escribir "Escriba s para parar y cualquier otro para continuar";
			Leer varDesición;
			varPosi=varPosi+1;
			Si varDesición=='s' Entonces
				varContador=1000;			
			Fin Si
		Fin Para
	Hasta Que varDesición='s';
	Para varContador<-0 Hasta varPosi Con Paso 1 Hacer
		Escribir "El número es: ",varNum[varContador]," Y su valor absoluto es: ",abs(varNum[varContador]);
	Fin Para
FinAlgoritmo
