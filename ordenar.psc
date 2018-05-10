//Creado: por Kevin Acosta
//C�digo: 104618011480
//Materia: Introducci�n a la inform�tica (SIS0101)
//ID de grupo: 76310

Funcion escribir_resultado2 (prmVector,prmContador,prmDimension)
	Para prmContador<-0 Hasta prmDimension-1 Con Paso 1 Hacer
		Escribir "(",prmVector[prmContador],")-";Sin Saltar
	Fin Para
Fin Funcion

Funcion escribir_resultado (prmContador,prmDimension,prmVector,prmOpcion)
	Escribir "";
	Si prmOpcion==Falso Entonces
		escribir "De mayor a menor queda: ";
		escribir_resultado2(prmVector,prmContador,prmDimension);
		prmOpcion=Verdadero;
		ordenar(prmContador,prmVector,prmDimension,prmOpcion);
	Fin Si
	si prmOpcion==Verdadero Entonces
		Escribir "";
		escribir "De menor a mayor queda: ";
		Definir x Como Entero;
		escribir_resultado2(prmVector,prmContador,prmDimension);
		Escribir "";
	FinSi
Fin Funcion

Funcion llenar (prmContador,prmDimension,prmVector)
	Para prmContador<-0 Hasta prmDimension-1 Con Paso 1 Hacer
		Escribir "Ingrese el valor n�mero ",prmContador+1,": ";
		leer prmVector[prmContador];
	Fin Para
Fin Funcion

Funcion ordenar (prmContador,prmVector,prmDimension,prmOpcion)
	definir varAuxiliar,varAuxiliar2 Como Entero;
	Para prmContador<-0 Hasta prmDimension-2 Con Paso 1 Hacer
		Para varAuxiliar<-prmContador+1 Hasta prmDimension-1 Con Paso 1 Hacer
			Si prmOpcion|prmVector[varAuxiliar]>prmVector[prmContador] Entonces
				varAuxiliar2=prmVector[prmContador];
				prmVector[prmContador]=prmVector[varAuxiliar];
				prmVector[varAuxiliar]=varAuxiliar2;
			fin si
		Fin Para
	Fin Para
Fin Funcion

Algoritmo ordenar_algoritmo
	Definir varVector,varDimension,varContador Como Entero;
	Definir varOpcion Como Logico;
	varContador=0;
	varOpcion=Falso;
	Escribir "Por favor ingrese el tama�o del vector";
	Leer varDimension;
	Dimension varVector[varDimension];
	llenar(varContador,varDimension,varVector);
	ordenar(varContador,varVector,varDimension,Falso);
	escribir_resultado(varContador,varDimension,varVector,varOpcion);
FinAlgoritmo
//Creado por inusaico90