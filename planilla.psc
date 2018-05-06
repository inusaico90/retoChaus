Funcion CalcularNotaDefinitiva (prmMatriNotas,prmNumEstudiantes)
	Definir varFila, varColumnas como Entero;
	para varFila<-0 hasta prmNumEstudiantes-1 con paso 1 hacer
		prmMatriNotas[varFila,2]<-(prmMatriNotas[varFila,0]*0.70)*(prmMatriNotas[varFila,1]*0.30);
	FinPara
FinFuncion
Funcion EscribirRegistroNotas(prmVectorEstudiantes, prmNumEstudiantes,prmMatriNotas)
	Definir varFila, varColumna como entero;
	para varFila<-0 hasta prmNumEstudiantes-1 con Paso 1 hacer
		Limpiar Pantalla;
		Escribir prmVectorEstudiantes[varFila];
		para varColumna<-0 hasta 2 con paso 1 Hacer
			si varColumnas==0 entonces
				Escribir "Nota del 70%: ", prmMatriNotas[varFila,varColumna];
			FinSi
			si varColumna==1 Entonces
				Escribir "Nota del 30%: ", prmMatriNotas[varFila,varColumna];
			FinSi
			si varColumna=2 Entonces
				Escribir "Definitiva 100%: ", prmMatriNotas[varFila,varColumna];
			FinSi
		FinPara
		Esperar Tecla;
	FinPara
FinFuncion

funcion RegistrarHabilitaciones(prmMatriNotas,prmVectorEstudiantes,prmNumEstudiantes)
	Definir varFila como entero;
	Definir varOpcion como cadena;
	Para varFila<-0 Hasta prmNumEstudiantes-1 Con Paso 1 Hacer
		Si prmMatriNotas(varFila,2)>=2 & prmMatriNotas(varFila,2)<2.95 Entonces
			Escribir "Desea registrar habilitación para ", prmVectorEstudiantes(varFila), "s/n";
			leer varOpcion;
			si varOpcion=="s" entonces
				Escribir "Digite la calificación en la habilitación: ";
				Leer prmMatriNotas[varFila,3];
			SiNo
				prmMatriNotas[varFila,3]<--1;
			FinSi
		Fin Si
		Si prmMatriNotas(varFila,2)<2 Entonces
			Escribir prmVectorEstudiantes(varFila), "No tiene derecho a habilitación";
			prmMatriNotas[varFila,3]<--2;
		FinSi
		si prmMatriNotas(varFila,2)>=2.95 Entonces
			Escribir prmVectorEstudiantes(varFila), "No necesita habilitar";
			prmMatriNotas[varFila,3]<--3;
		fin si
	Fin Para
FinFuncion

Funcion LeerRegistroNotas(prmVectorEstudiantes, prmNumEstudiantes,prmMatriNotas)
	Definir varFila,varColumna como entero;
	para varfila<-0 hasta prmNumEstudiantes-1 con paso 1 hacer
		Limpiar Pantalla;
		Escribir "Ingrese el nombre del nuevo estudiante: ";
		Leer prmVectorEstudiantes[varFila];
		Para varColumna<-0 hasta 1 con paso 1 Hacer
			si varColumna=0 entonces
				escribir "Nota del 70%: ";
			SiNo
				Escribir "Nota del 30%: ";
			FinSi
			Leer prmMatriNotas[varFila,varColumna];
		FinPara
	FinPara
FinFuncion

Algoritmo PlaniNot
	Definir varNotas,varCodEstud Como Entero;
	Definir varEstudiantes como Cadena;
	
FinAlgoritmo
