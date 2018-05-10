Algoritmo prueba
	Definir varContador, varNumeros,varCuadrado,varSumatoria Como Entero;
	dimension varNumeros[1000];
	Para varContador<-0 Hasta 999 Con Paso 1 Hacer
		varNumeros[varContador]<-varContador;
		varCuadrado<-varContador*varContador;
		Escribir "el número es: ",varContador, " y el número es: ",varCuadrado;
		Si varContador>0 Entonces
			varSumatoria=varNumeros[varContador]+varSumatoria;
		SiNo
			varSumatoria=varNumeros[varContador];
		Fin Si
	Fin Para
	Escribir varSumatoria;
FinAlgoritmo
