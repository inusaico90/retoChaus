//Poblar un arreglo tetradimencional y luego hallar el promedio del total de elementos, el número maximo, el número minimo y el factorial de el conteno de números pares 
Algoritmo taller_parejas3
	Definir x,y,z,t,varArreglo Como Entero;
	Definir varEntero,varMenor Como Entero;
	Escribir "Ingrese las 4 dimensiones";Leer x,y,z,t;
	Dimension varArreglo[x,y,z,t];
	Para x<-0 Hasta x-1 Con Paso 1 Hacer
		Para y<-0 Hasta y-1 Con Paso 1 Hacer
			Para z<-0 Hasta z-1 Con Paso 1 Hacer
				Para t<-0 Hasta t-1 Con Paso 1 Hacer
					varArreglo[x,y,z,t]<-Aleatorio(0,10);
					Escribir varArreglo[x,y,z,t],"-" Sin Saltar;
				Fin Para
			Fin Para
		Fin Para
	Fin Para
	Para x<-0 Hasta x-1 Con Paso 1 Hacer
		Para y<-0 Hasta y-1 Con Paso 1 Hacer
			Para z<-0 Hasta z-1 Con Paso 1 Hacer
				Para t<-0 Hasta t-1 Con Paso 1 Hacer
					
				Fin Para
			Fin Para
		Fin Para
	Fin Para
FinAlgoritmo
