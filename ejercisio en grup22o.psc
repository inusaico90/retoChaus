
//Puntos: 3
//Escribir un algoritmo que permita calcular el cuadrado de los 100 primeros n�meros enteros y a continuaci�n escribir una tabla con dichos cuadrados
//es decir, n�mero y su cuadrado, usando arreglos
Algoritmo trabajo_parejas2
	Definir varContador Como Entero;
	Definir varEntero Como Entero;
	Dimension varEntero[2,100];
	
	Para varContador<-0 Hasta 99 Con Paso 1 Hacer
		varEntero[0,varContador]=varContador;
		varEntero[1,varContador]=varContador^2;
		Escribir "el n�mero es: ",varEntero[0,varContador]," y su cuadrado es: ", varEntero[1,varContador];
	Fin Para
	
FinAlgoritmo
