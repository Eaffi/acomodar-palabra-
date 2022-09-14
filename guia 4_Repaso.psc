Algoritmo sin_titulo
	definir matriz, pal Como Caracter
	definir f Como Entero
	Dimension matriz(9,12)
	

	agregarPalabra(matriz, "vector", 0)
	agregarPalabra(matriz, "matrix", 1)
	agregarPalabra(matriz, "programa", 2)
	agregarPalabra(matriz, "subprograma", 3)
	agregarPalabra(matriz, "subproceso", 4)
	agregarPalabra(matriz, "variable", 5)
	agregarPalabra(matriz, "entero", 6)
	agregarPalabra(matriz, "para", 7)
	agregarPalabra(matriz, "mientras", 8)
    imprimirMatriz(matriz)
	
	acomodarPalabra(matriz)
	imprimirMatriz(matriz)
FinAlgoritmo

SubProceso agregarPalabra(matriz,pal,n)
	Definir i, j Como Entero
	para j = 0 Hasta 11
		matriz(n,j) = Subcadena(pal,j,j)
	FinPara
FinSubProceso

SubProceso imprimirMatriz(matriz)
	Definir i, j Como Entero
	para i = 0 Hasta 8
		para j = 0 Hasta 11
			Escribir matriz(i,j), " " Sin Saltar
		FinPara
		Escribir ""
	FinPara
	Escribir ""
FinSubProceso

SubProceso acomodarPalabra(matriz)
	Definir i, j, pos Como Entero
	
	para i = 0 Hasta 8
		pos = buscarR(matriz, i)         //Asigno a "pos" el valor que me devuelva la funcion buscarR
		pos = 5 - pos                    //Le resto 5 a la posicion donde esta "R" para saber cuantos casilleros se debe mover
		 //                                //Ej. en "matrix" la "r" esta en pos 3 (5-3= 2) 
		para j = 11 Hasta pos                     //De atras hacia adelante voy moviendo letra por letra
			matriz(i,j) = matriz(i,j-pos)          //Ej. a "matriz(0,7)" se le asigna el valor de "matriz(0,5)"
			    Escribir matriz(i,j) Sin Saltar  //La "x" de "matrix" pasa del casillero 5 al casillero 7
		FinPara
		escribir ""
		si pos <> 0 Entonces              //Esto es para dejar vacios los primeros casilleros antes que arranque la palabra
			Para j = pos-1 Hasta 0       //la primera letra de la palabra va a quedar en el casillero con valor de "pos"
			    matriz(i,j) = " "         //Ej, en "matrix" la "m" queda en el casillero 2, entonces el 1 (pos-1) y el 0 deben quedar vacios
		    FinPara
	    FinSi
	FinPara
FinSubProceso

funcion pos = buscarR(matriz,n)
	Definir i, pos Como Entero
	i = -1
	Hacer
		i = i + 1
	hasta Que  matriz(n,i) = "r"
	pos = i
FinSubProceso




	