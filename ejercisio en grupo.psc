//decimas: 2
//Leer numeros reales hasta que el usuario diga que no quiere leer m�s
// Imprimir los n�meros ingresados y su valor absoluto

Algoritmo trabajo_parejas
	Definir varContador como entero;
	Definir varNum como real;
	Definir varDesici�n Como caracter;
	Dimension varNum[1000];
	Definir varPosi Como Entero;
	varPosi=-1;
	Repetir
		Para varContador<-0 Hasta 1000 Con Paso 1 Hacer
			Escribir "Ingrese el n�mero";
			Leer varNum[varContador];
			Escribir "Escriba s para parar y cualquier otro para continuar";
			Leer varDesici�n;
			varPosi=varPosi+1;
			Si varDesici�n=='s' Entonces
				varContador=1000;			
			Fin Si
		Fin Para
	Hasta Que varDesici�n='s';
	Para varContador<-0 Hasta varPosi Con Paso 1 Hacer
		Escribir "El n�mero es: ",varNum[varContador]," Y su valor absoluto es: ",abs(varNum[varContador]);
	Fin Para
FinAlgoritmo
