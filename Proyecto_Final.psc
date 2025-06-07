Algoritmo Proyecto_Final
	Definir opcion Como Entero
	Escribir 'BIENVENIDO A LA CALCULADORA DEL GRUPO #6'
	escribir ""
	Escribir 'Operaciones Disponibles:'
	escribir ""
	Escribir '1: Suma'
	Escribir '2: Resta'
	Escribir '3: Multiplicación'
	Escribir '4: División'
	Escribir '5: Sumar todos los valores de la matriz'
	Escribir '6: Restar todos los valores de la matriz'
	Escribir '7: Suma de matrices'
	Escribir '8: Resta de matrices'
	Escribir '9: Triángulo con números'
	Escribir '10: Rectángulo con asteriscos"
	Escribir '11: Estadísticas en una lista de números'
	escribir ""
	Escribir 'Ingrese La Operación Que Desea Realizar'
	Leer opcion
	Según opcion Hacer
		1:
			Escribir 'HA ELEGIDO SUMA'
			Definir num1, num2, resultado Como Entero
			Escribir 'Ingrese un numero'
			Leer num1
			Escribir 'Ingrese el segundo numero'
			Leer num2
			resultado <- num1+num2
			Escribir 'El resultado es: ', resultado
		2:
			Escribir 'HA ELEGIDO RESTA'
			Definir num1, num2, resultado Como Entero
			Escribir 'Ingrese un numero'
			Leer num1
			Escribir 'Ingrese el segundo numero'
			Leer num2
			resultado <- num1-num2
			Escribir 'El resultado es: ', resultado
		3:
			Escribir 'HA ELEGIDO MULTIPLICACIÓN'
			Definir num1, num2, resultado Como Entero
			Escribir 'Ingrese un numero'
			Leer num1
			Escribir 'Ingrese el segundo numero'
			Leer num2
			resultado <- num1*num2
			Escribir 'El resultado es: ', resultado
		4:
			Escribir 'HA ELEGIDO DIVISIÓN'
			Definir num1, num2, resultado Como Entero
			Escribir 'Ingrese un numero'
			Leer num1
			Escribir 'Ingrese el segundo numero'
			Leer num2
			resultado <- num1/num2
			Escribir 'El resultado es: ', resultado
		5:
			Escribir 'HA ELEGIDO SUMAR TODOS LOS VALORES DE LA MATRIZ'
			Definir filas, columnas, v1, v2, z, f, matriz Como Entero
			Escribir "Ingrese el numero de filas que desea en la Matriz: " Sin Saltar
			leer filas
			Escribir "Ingrese el numero de columnas que desea para la Matriz: " Sin Saltar
			leer columnas
			Dimensionar matriz(filas, columnas), v1(filas), v2(columnas)
			Para z <- 1 Hasta filas Con Paso 1 Hacer
				v1[z] <- 0
			FinPara
			Para f <- 1 Hasta filas Con Paso 1 Hacer
				v2[f] <- 0
			FinPara
			Escribir "Ingrese los valores para su Matriz (", filas, "*", columnas, "):"
			Para z <- 1 hasta filas Con Paso 1 Hacer
				Para f <- 1 Hasta columnas Con Paso 1 Hacer
					Escribir "Ingrese el valor para la posición [", z, "][", f, "]: " Sin Saltar
					Leer matriz[z, f]
				FinPara
			FinPara
			Escribir " "
			Escribir "La matriz ingresada es:"
			Para z <- 1 Hasta filas Con Paso 1 hacer
				para f <- 1 Hasta columnas Con Paso 1 hacer
					Escribir matriz[z,f], " " Sin Saltar
					v1[z] <- v1[z] + matriz[z,f]
					v2[f] <- v2[f] + matriz[z,f]
				FinPara
				Escribir ""
			FinPara
			Escribir ""
			Escribir "Resultados: "
			Para z <- 1 Hasta filas Con Paso 1 Hacer
				Escribir "Suma Fila ", z, " = ", v1[z]
			FinPara
			Para f <- 1 Hasta columnas Con Paso 1 Hacer
				Escribir "Suma Columna ", f, " = ", v2[f]
			FinPara
		6:
			Escribir 'HA ELEGIDO RESTAR TDODS LOS VALORES DE LA MATRIZ'
			Definir filas, columnas, z, f, v1, v2, matriz Como Entero
			Escribir "Ingrese el numero de filas que desea en la Matriz: " Sin Saltar
			leer filas
			Escribir "Ingrese el numero de columnas que desea para la Matriz: " Sin Saltar
			leer columnas
			Dimensionar matriz(filas, columnas), v1(filas), v2(columnas)
			Para z <- 1 Hasta filas Con Paso 1 Hacer
				v1[z] <- 0
			FinPara
			Para f <- 1 Hasta columnas Con Paso 1 Hacer
				v2[f] <- 0
			FinPara
			Escribir "Ingrese los valores para su Matriz (", filas, "*", columnas, "):"
			Para z <- 1 hasta filas Con Paso 1 Hacer
				Para f <- 1 Hasta columnas Con Paso 1 Hacer
					Escribir "Ingrese el valor para la posición [", z, "][", f, "]: " Sin Saltar
					Leer matriz[z, f]
				FinPara
			FinPara
			Escribir " "
			Escribir "La matriz ingresada es:"
			Para z <- 1 Hasta filas Con Paso 1 hacer
				Para f <- 1 Hasta columnas Con Paso 1 hacer
					Escribir matriz[z,f], " " Sin Saltar
					Si f = 1 Entonces
						v1[z] <- matriz[z,f]
					SiNo
						v1[z] <- v1[z] - matriz[z,f]
					FinSi
					Si z = 1 Entonces
						v2[f] <- matriz[z,f]
					SiNo 
						v2[f] <- v2[f] - matriz[z,f]
					FinSi
				FinPara
				Escribir ""
			FinPara
			Escribir ""
			Escribir "Resultados de la resta:"
			Para z <- 1 Hasta filas Con Paso 1 Hacer
				Escribir "Resta Fila ", z, " = ", v1[z]
			FinPara
			Para f <- 1 Hasta columnas Con Paso 1 Hacer
				Escribir "Resta Columna ", f, " = ", v2[f]
			FinPara
		7:
			Escribir "HA ELEJIDO SUMA DE MATRIZ"
			Definir a, b, c, d, suma, matriz Como Entero
			Escribir "Ingrese el Numero de filas"
			leer c
			Escribir "Ingrese el numero de columnas"
			Leer d
			Dimensionar matriz(c,d)
			Para a = 1 Hasta  c Con Paso 1 Hacer
				Para b = 1 hasta d Con Paso 1 Hacer
					Escribir "Ingrese un numero en la fila ", a " Ingrese un numero en la columna ", b
					leer matriz(a,b)
				FinPara
			FinPara
			suma=0
			Para a = 1 Hasta c Con Paso 1 Hacer
				Para b = 1 hasta d Con Paso 1 Hacer
					suma = suma + matriz(a,b)
				FinPara
			FinPara
			Escribir "La suma de matriz es: " suma
		8:
			Escribir "HA ELEJIDO RESTA DE MATRIZ"
			Definir a, b, c, d, resta, matriz Como Entero
			Escribir "Ingrese el Numero de filas"
			leer c
			Escribir "Ingrese el numero de columnas"
			Leer d
			Dimensionar matriz(c,d)
			Para a = 1 Hasta  c Con Paso 1 Hacer
				Para b = 1 hasta d Con Paso 1 Hacer
					Escribir "Ingrese un numero en la fila ", a " Ingrese un numero en la columna ", b
					leer matriz(a,b)
				FinPara
			FinPara
			resta=0
			Para a = 1 Hasta c Con Paso 1 Hacer
				Para b = 1 hasta d Con Paso 1 Hacer
					resta = resta - matriz(a,b)
				FinPara
			FinPara
			Escribir "La resta de matriz es: " resta
		9:
			Escribir "HA ELEGIDO TRIANGULO CON NUMEROS"
			Definir n, i, j, numeroImpar Como Entero
			Escribir "Ingrese el número de filas para el triángulo: "
			Leer n
			Si n <= 0 Entonces
				Escribir "El número debe ser mayor que 0"
			SiNo
				Para i <- 1 Hasta n Con Paso 1 Hacer
					Para j <- i Hasta 1 Con Paso -1 Hacer
						numeroImpar <- (2 * j) - 1
						Escribir Sin Saltar numeroImpar, " "
					FinPara
					Escribir ""
				FinPara
			FinSi
		10:
			Escribir "HA ELEGIDO RECTANGULO CON ASTERICOS"
			Definir ancho, alto, i, j como Entero
			ancho<-0
			alto<-0
			i=0
			j=0
			Escribir "¿Ingrese Los Astericos De Ancho?"
			Leer ancho
			Escribir "¿Ingrese Los Astericos De Alto?"
			Leer alto
			Para i=1 Hasta alto Con Paso 1 Hacer
				Para j=1 Hasta ancho Con Paso 1 Hacer
					Si i=1 o i=alto o j=1 o j=ancho
						Escribir "*" Sin Saltar
					SiNo
						Escribir " " Sin Saltar
					FinSi
				FinPara
				Escribir ""
			FinPara
		11:
			Escribir "HA ELEGIDO ESTADISTICA DE NUMEROS"
			Definir numeros Como Real
			Definir contador, i Como Entero
			Definir suma, promedio, mayor, menor Como Real
			Definir encima_promedio, debajo_promedio Como Entero
			Definir numero_actual Como Real
			Dimension numeros[100]
			contador <- 0
			suma <- 0
			encima_promedio <- 0
			debajo_promedio <- 0
			Escribir "Ingrese números (máximo 100)"
			Escribir "Ingrese -1 para terminar"
			Escribir ""
			Repetir
				Escribir Sin Saltar "Número ", (contador + 1), ": "
				Leer numero_actual
				Si numero_actual <> -1 Entonces
					Si contador < 100 Entonces
						contador <- contador + 1
						numeros[contador] <- numero_actual
						suma <- suma + numero_actual
					SiNo
						Escribir "Se ha alcanzado el límite de 100"
						numero_actual <- -1
					FinSi
				FinSi
			Hasta Que numero_actual = -1
			Si contador = 0 Entonces
				Escribir "No se ingresaron números válidos."
			SiNo
				promedio <- suma / contador
				mayor <- numeros[1]
				menor <- numeros[1]
				Para i <- 1 Hasta contador Hacer
					Si numeros[i] > mayor Entonces
						mayor <- numeros[i]
					FinSi
					Si numeros[i] < menor Entonces
						menor <- numeros[i]
					FinSi
					Si numeros[i] > promedio Entonces
						encima_promedio <- encima_promedio + 1
					SiNo
						Si numeros[i] < promedio Entonces
							debajo_promedio <- debajo_promedio + 1
						FinSi
					FinSi
				FinPara
				Escribir ""
				Escribir " RESULTADOS "
				Escribir "Cantidad de números ingresados: ", contador
				Escribir "Suma total: ", suma
				Escribir "Promedio: ", promedio
				Escribir "Número mayor: ", mayor
				Escribir "Número menor: ", menor
				Escribir ""
				Escribir " ANÁLISIS DE PROMEDIO "
				Escribir "Números por encima del promedio: ", encima_promedio
				Escribir "Números por debajo del promedio: ", debajo_promedio
				Escribir "Números iguales al promedio: ", (contador - encima_promedio - debajo_promedio)
				Escribir ""
				Escribir " NÚMEROS INGRESADOS "
				Para i <- 1 Hasta contador Hacer
					Escribir Sin Saltar numeros[i], " "
				FinPara
				Escribir ""
    FinSi
		De Otro Modo:
			Escribir 'NO HAY MAS OPCIONES DISPONIBLES :)'
	FinSegún
FinAlgoritmo
