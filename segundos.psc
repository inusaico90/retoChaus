Algoritmo Saavedra
	Definir varSegundos Como Entero;
	Escribir "Ingrese el tiempo en segundos: ";
	Leer varSegundos;
	Escribir trunc(varSegundos/60)*60;
	Si varSegundos-60==(60*trunc(varSegundos/60))-60 Entonces
		Escribir "Tienes: ",trunc(varSegundos/60)," minutos con: 0 segundos";
		Escribir "Faltan 60 segundos para ",trunc(varSegundos/60)+1;
	SiNo
		Escribir "Tienes: ",trunc(varSegundos/60)," minutos con: ",varSegundos%60," segundos";
		Escribir "Faltan ",60-(varSegundos%60)," segundos para ",trunc(varSegundos/60)+1," minutos";
	Fin Si
FinAlgoritmo


		//PRUEBA DE ESCRITORIO
// < varSegundos=3600s == 60min
// > Tienes: 60 minutos con: 0 segundo
// > Faltan 60 segundos para 6

// < varSegundos=3812s == 63.32m
// > Tienes: 63 minutos con: 32 segundo
// > Faltan 28 segundos para 64 minuto

// < varSegundos=12012312s ==2002052,08m
// > Tienes: 2002052 minutos con: 8 segundo
// > Faltan 52 segundos para 2002053 minuto

// < varSegundos=1s == 0,01s
// > Tienes: 0 minutos con: 1 segundo
// > Faltan 59 segundos para 1 minuto