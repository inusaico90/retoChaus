//0)valor base 1)Monedero 2)Alcancia
funcion imprimirPantalla(prmOpcion Por Referencia)
	Limpiar Pantalla;
	Escribir "*********************BIENVENIDO********************";
	Escribir "1)Crear alcancia          2)Crear la moneda";
	Escribir "3)Introducir moneda       4)Extraer moneda";
	Escribir "5)Total en la alcancia    6)Cantidad de monedas";
	Escribir "7)Total por denominación  8)Conteo por denominación";
	Escribir "                     9)Salir";
	Escribir "////////CREADO POR INUSAICO90 (Kevin Acosta)\\\\\\\\";
	Escribir "";
	Escribir "Ingrese su opción: ";Leer prmOpcion;
FinFuncion
Funcion varOpcion<-CrearAlcancia(prmNombre Por Referencia)
	Limpiar Pantalla;
	Definir varOpcion Como Entero;
		Escribir "¿Cual es el nombre de la alcancia";
		Leer prmNombre;
		Escribir "¿Cuantos valores aceptara ",prmNombre,"?";
		Repetir
			Leer varOpcion;
		Hasta Que varOpcion>0;
Fin Funcion
Funcion llenarMatriz(prmNumero,prmOpcion,prmNombre)
	Definir varIterador,varIterador2,varAux Como Entero;
	Definir existe Como Logico;
	Para varIterador<-0 Hasta prmOpcion-1 Con Paso 1 Hacer
		Escribir "ingresa el valor ",varIterador+1," para ",prmNombre;
		Repetir
			Escribir "Ingrese un valor mayor a 0 entero";varAux=-1;
			Leer prmNumero[0,varIterador];existe=Falso;
			para varIterador2<-0 hasta varIterador Con Paso 1 Hacer
				si varIterador!=varIterador2&&prmNumero[0,varIterador]==prmNumero[0,varIterador2]&&(varIterador!=0) Entonces
					Escribir "Ese valor ya existe";
				SiNo
					varAux=varAux+1;
					si varAux==varIterador Entonces
						existe=Verdadero;
					FinSi
				FinSi
			FinPara
			si existe entonces
				prmNumero[1,varIterador]=0;
				prmNumero[2,varIterador]=0;
			FinSi
		Hasta Que prmNumero[0,varIterador]>0&&existe;
	Fin Para
FinFuncion
Funcion crearMoneda(prmNumero Por Referencia,prmLongitud)
	Definir varOpcion,varIterador,varAux,varAux2 Como Entero;varOpcion=0;varIterador=0;varAux2=0;
	Definir varExiste Como Logico;varExiste=falso;
	Repetir
		Escribir "ingresa 1 para crear monedas aleatoriamente y 2 para elegirlas tu";
		Leer varOpcion;
		Segun varOpcion Hacer
			1:
				Escribir "¿Cuantas monedas quieres que se generen?";
				Repetir
					Leer varAux2;
				Hasta Que varAux2>0
				Escribir "---GENERANDO---";
				Repetir
					varAux<-azar((prmLongitud-1)+1);
					prmNumero[1,varAux]=prmNumero[1,varAux]+1;
					varIterador=varIterador+1;
				Hasta Que varIterador==varAux2
				Esperar 2 Segundos;
				Escribir "Listo, consulta tú monedero para saber más.";
			2:
				Escribir "¿Cuantas monedas quieres generar?";
				Repetir
					Leer varAux2;
				Hasta Que varAux2>0
				Para varIterador<-0 Hasta varAux2-1 Con Paso 1 Hacer
					Escribir "Cual es el valor ",varIterador+1," que quieres crear ";
					Leer varAux;
					varAux<-validarUbicacion(varAux,prmLongitud,prmNumero,varExiste);
					prmNumero[1,varAux]=prmNumero[1,varAux]+1;
				Fin Para
			De Otro Modo:
				Escribir "Opcion no valida";
		Fin Segun
	Hasta Que varOpcion<3 && varOpcion>0
FinFuncion
Funcion totalAlcancia(prmNumero,prmDimension,prmNombre)
	Definir varIterador,varTotal Como Entero;varTotal=0;
	Para varIterador<-0 Hasta prmDimension-1 Con Paso 1 Hacer
		varTotal=varTotal+prmNumero[2,varIterador]*prmNumero[0,varIterador];
	Fin Para
	Escribir "Tienes un total de ",varTotal," de dinero en ",prmNombre;
FinFuncion
Funcion totalMonedas(prmNumero,prmNombre,prmDimension)
	Definir varIterador,varTotal,varTotal2 Como Entero;varTotal=0;varTotal2=0;
	Para varIterador<-0 Hasta prmDimension-1 Con Paso 1 Hacer
		varTotal=varTotal+prmNumero[1,varIterador];
		varTotal2=varTotal2+prmNumero[2,varIterador];
	Fin Para
	Escribir "Tienes ",varTotal," en el monedero";
	Escribir "Tienes ",varTotal2," en ",prmNombre;
FinFuncion
Funcion totalDenominacion(prmNumero,prmNombre,prmDimension)
	Definir varOpcion,varIterador,varAux Como Entero; varAux=0;
	Escribir "ingresa de que valor quieres saber el total que tienes en ",prmNombre;
	Leer varOpcion;
	Para varIterador<-0 Hasta prmDimension-1 Con Paso 1 Hacer
		si varOpcion==prmNumero[0,varIterador] Entonces
			Escribir "tienes ",(prmNumero[0,varIterador]*prmNumero[2,varIterador])," en monedas de ",varOpcion;
		SiNo
			varAux=varAux+1;
			si varAux==prmDimension Entonces
				Escribir "ese valor no existe en ",prmNombre;
			FinSi
		FinSi
	Fin Para
FinFuncion
Funcion contarDenominacion(prmNumero,prmNombre,prmDimension)
	Definir varOpcion,varIterador,varAux Como Entero; varAux=0;
	Escribir "ingresa de que valor quieres saber cuantas monedas tienes ",prmNombre;
	Leer varOpcion;
	Para varIterador<-0 Hasta prmDimension-1 Con Paso 1 Hacer
		si varOpcion==prmNumero[0,varIterador] Entonces
			Escribir "tienes ",prmNumero[2,varIterador]," monedas de ",varOpcion;
		SiNo
			varAux=varAux+1;
			si varAux==prmDimension Entonces
				Escribir "ese valor no existe en ",prmNombre;
			FinSi
		FinSi
	Fin Para
FinFuncion
Funcion ingresarMoneda(prmNombre,prmDimension,prmNumero Por Referencia)
	Definir varOpcion,varIterador Como Entero;Definir existe Como Logico;
	existe=falso;
	Para varIterador<-0 Hasta prmDimension-1 Con Paso 1 Hacer
		Escribir "Tienes ",prmNumero[1,varIterador]," de ",prmNumero[0,varIterador];
	Fin Para
	Escribir "ingresa que valor quieres ingresar a ",prmNombre;
	Leer varOpcion;
	varOpcion<-validarUbicacion[varOpcion,prmDimension,prmNumero,existe];
	si existe Entonces
		si prmNumero[1,varOpcion]==0 Entonces
			Escribir "No tienes dinero de esta denominación para extraer del monedero";
		SiNo
			prmNumero[1,varOpcion]=prmNumero[1,varOpcion]-1;
			prmNumero[2,varOpcion]=prmNumero[2,varOpcion]+1;
		FinSi
	FinSi
FinFuncion

Funcion varUbicacion<-validarUbicacion(prmOpcion,prmDimension,prmNumero,prmExiste Por Referencia)
	Definir varIterador,varUbicacion,varAux Como Entero;varAux=0;
	para varIterador<-0 hasta prmDimension-1 Con Paso 1 Hacer
		si prmOpcion==prmNumero[0,varIterador] Entonces
			varUbicacion=varIterador;
			prmExiste=Verdadero;
		SiNo
			varAux=varAux+1;
			si varAux==prmDimension Entonces
				Escribir "ese valor no existe";
			FinSi
		FinSi
	FinPara
FinFuncion

Funcion extraerMoneda(prmNombre,prmDimension,prmNumero)
	Definir varIterador,varOpcion,varAux Como Entero;varAux=0;
	Definir existe Como Logico;existe=falso;
	Para varIterador<-0 Hasta prmDimension-1 Con Paso 1 Hacer
		Escribir "Tienes ",prmNumero[2,varIterador]," de ",prmNumero[0,varIterador]," en ",prmNombre;
	Fin Para
	Escribir "ingresa que valor quieres extraer de ",prmNombre;
	Leer varOpcion;
	varOpcion<-validarUbicacion[varOpcion,prmDimension,prmNumero,existe];
	si existe Entonces
		si prmNumero[2,varOpcion]==0 Entonces
			Escribir "No tienes dinero de esta denominación para extraer de ",prmNombre;
		SiNo
			si prmNumero[1,varOpcion]==0 Entonces
				Escribir "No tienes dinero de esta denominación para extraer de ",prmNombre;
			SiNo
				prmNumero[1,varOpcion]=prmNumero[1,varOpcion]+1;
				prmNumero[2,varOpcion]=prmNumero[2,varOpcion]-1;
			FinSi
		FinSi
	FinSi

FinFuncion
Algoritmo alcancia_main
	Definir varNombre como texto;
	Definir varOpcion,varNumero,varDimension Como Entero;
	Definir esInicializado Como Logico;
	esInicializado=falso;
	varOpcion=0;varNombre="";
	Repetir
		imprimirPantalla(varOpcion);
		Segun varOpcion hacer
			1:
				si !esInicializado Entonces
					varDimension<-crearAlcancia(varNombre);
					Dimension varNumero[3,varDimension];
					llenarMatriz(varNumero,varDimension,varNombre);
					esInicializado=Verdadero;
				SiNo
					Escribir "Ya tienes una alcancia";
				FinSi
			2:
				si esInicializado Entonces
					crearMoneda(varNumero,varDimension);
				SiNo
					Escribir "Debes crear primero la alcancia";
				FinSi
			3:
				si esInicializado Entonces
					ingresarMoneda(varNombre,varDimension,varNumero);
				SiNo
					Escribir "Debes crear primero la alcancia";
				FinSi
			4:
				si esInicializado Entonces
					extraerMoneda(varNombre,varDimension,varNumero);
				SiNo
					Escribir "Debes crear primero la alcancia";
				FinSi
			5:
				si esInicializado Entonces
					totalAlcancia(varNumero,varDimension,varNombre);
				SiNo
					Escribir "Debes crear primero la alcancia";
				FinSi
			6:
				si esInicializado Entonces
					totalMonedas(varNumero,varNombre,varDimension);
				SiNo
					Escribir "Debes crear primero la alcancia";
				FinSi
			7:
				si esInicializado Entonces
					totalDenominacion(varNumero,varNombre,varDimension);
				SiNo
					Escribir "Debes crear primero la alcancia";
				FinSi
			8:
				si esInicializado Entonces
					contarDenominacion(varNumero,varNombre,varDimension);
				SiNo
					Escribir "Debes crear primero la alcancia";
				FinSi
			9:
				Escribir "Adios";
			De Otro Modo:
				Escribir "Selecciona una opción valida";
		FinSegun
		Escribir "Oprime cualquier tecla para continuar";Esperar Tecla;
	Hasta Que varOpcion==9
FinAlgoritmo
