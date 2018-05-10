Funcion varOpcion <- LeerOpcion(prmEnunciado)
	Definir varOpcion como entero;
	Escribir prmEnunciado;Leer varOpcion;
Fin Funcion

Algoritmo Mario
	Definir varOpcion, varAltura Como Entero;
	varOpcion <- LeerOpcion("¿cuantas columnas hay?");
	Dimension varAltura[varOpcion+1];
	varAltura[0]=0;
	Para varOpcion<-1 Hasta varOpcion Con Paso 1 Hacer
		escribir "¿cual es la altura de la columna número: ", varOpcion;
		Leer varAltura[varOpcion];
	Fin Para
	Escribir "los resultados son: ";
	Para varOpcion<-1 Hasta varOpcion-1 Con Paso 1 Hacer
		Si varAltura[varOpcion-1]!=varAltura[varOpcion] Entonces
			Si varAltura[varOpcion-1]>varAltura[varOpcion] Entonces
				Escribir "Baja ", varAltura[varOpcion-1]-varAltura[varOpcion];
			SiNo
				Escribir "Subo ", varAltura[varOpcion]-varAltura[varOpcion-1];
			Fin Si
		SiNo
			Escribir "Pasa al frente";
		Fin Si
	Fin Para
	Escribir "Mario llego a la princesa";
FinAlgoritmo
