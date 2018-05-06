// Creado: por Kevin Acosta
//Código: 104618011480
//Materia: Introducción a la informática (SIS0101)
//ID de grupo: 76310

Funcion escribir_resultado (prmVector,prmContador,prmDimension)
	Para prmContador<-0 Hasta prmDimension-1 Con Paso 1 Hacer
		Escribir "(",prmVector[prmContador],")-";Sin Saltar
	Fin Para
Fin Funcion

Funcion elegir_resultado (prmContador,prmDimension,prmVector,prmOpcion)
	Si prmOpcion==Falso Entonces
		escribir "De mayor a menor queda: ";
		escribir_resultado(prmVector,prmContador,prmDimension);
		prmOpcion=Verdadero;
		ordenar(prmContador,prmVector,prmDimension,prmOpcion);
	Fin Si
	si prmOpcion==Verdadero Entonces
		Escribir "";
		escribir "De menor a mayor queda: ";
		escribir_resultado(prmVector,prmContador,prmDimension);
		Escribir "";
	FinSi
Fin Funcion

Funcion ordenar (prmContador,prmVector,prmDimension,prmOpcion)
	definir varAuxiliar,varAuxiliar2 Como Entero;
	Para prmContador<-0 Hasta prmDimension-2 Con Paso 1 Hacer
		Para varAuxiliar<-prmContador+1 Hasta prmDimension-1 Con Paso 1 Hacer
			Si prmOpcion || prmVector[varAuxiliar]>prmVector[prmContador] Entonces
				varAuxiliar2=prmVector[prmContador];
				prmVector[prmContador]=prmVector[varAuxiliar];
				prmVector[varAuxiliar]=varAuxiliar2;
			fin si
		Fin Para
	Fin Para
Fin Funcion

Funcion llenar (prmContador,prmDimension,prmVector)
	Para prmContador<-0 Hasta prmDimension-1 Con Paso 1 Hacer
		Escribir "Ingrese el valor número ",prmContador+1,": ";
		leer prmVector[prmContador];
	Fin Para
Fin Funcion

Algoritmo ordenar_algoritmo
	Definir varVector,varDimension,varContador Como Entero;
	Definir varOpcion Como Logico;
	varContador=0;
	varOpcion=Falso;
	Repetir
		Escribir "Por favor ingrese un tamaño al vector mayor a 0";
		Leer varDimension;
	Hasta Que varDimension>0;
	Dimension varVector[varDimension];
	llenar(varContador,varDimension,varVector);
	ordenar(varContador,varVector,varDimension,varOpcion);
	elegir_resultado(varContador,varDimension,varVector,varOpcion);
FinAlgoritmo

//Creado por inusaico90