Funcion varResultado <- figonacci(prmNumero)
	Definir varResultado Como Entero;
	varResultado=0;
	//Caso semilla (base)
	Si prmNumero==1 || prmNumero==0 Entonces
		varResultado=prmNumero;
	SiNo
		//caso recursivo
		varResultado=figonacci(prmNumero-1)+figonacci(prmNumero-2);
		//Escribir "El figonacci de ",prmNumero+1," es: ",varResultado;
	Fin Si
Fin Funcion

Algoritmo figonacciRecursivo
	definir varNumero,varResultado,varIterador Como Entero;
	varResultado=0;
	Escribir "ingresar número para calcular la serie: ";leer varNumero;
	Para varIterador<-0 Hasta varNumero-1 Con Paso 1 Hacer
		varResultado<-figonacci(varIterador);
		Escribir varResultado;
	Fin Para
FinAlgoritmo
