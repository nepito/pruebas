pruebas
¿Qué son las pruebas?

El nombre del proceso anterior es pruebas de regresión. Tradicionalmente son pruebas que corremos
para verificar que el comportamiento de nuestras herramientas aun es el mismo que esperamos cundo
los definimos en el pasado. Este tipo de verificaciones son costosas en tiempo y recursos. Al 
momento de escribir estas lineas (junio del 2020) nos tomaba más de ocho horas y nos consumiía más
de 30 Gb de memoria de disco duro. La información que nos da esta prueba es muy general, sabemos 
qué rompimos pero no cómo lo rompimos.

## Modifica y reza contra cubre y modifica
Kent Beck nos habla de otro tipo de pruebas. Pruebas que son menos costosas (en tiempo y recursos 
computacionales). Estas pruebas son una herramienta en el desarrollo de _software_ que cumplen con
objetivos diferentes. Para Kennt, ayudan al diseño de las características del código que vamos a 
escribir. Por ejemplo, para escribir una prueba necesitamos definir cuáles serán las variables de 
entrada, cuál es la funcionalidad que queremos implementar o la respuesta de salida que esperamos,
cómo evaluaremos si la salida es correcta, el nombre del las variables, funciones y clases que 
escribamos, etc.

Para Michel Feathers, así como para Kent, lo más importante de las pruebas es la seguridad que nos 
proporcionan. Siempre que escribimos código probamos su comportamiento: urgamos un poco en los
pasos mostrando el resultado en la panatalla y de ahí corregimos nuestro camino o siguimos por ahí.
Cuando tenemos pruebas aquellas verificaciones se hacen de manera automática. Si tenemos duda de si
lo que acabos de escribir es correcto solo corremos las pruebas. Si algo está mal, regresamos unos 
pasos atrás y lo volvemos a intentar. Así, con este flujo de trabajo podemos vacunar a nuestro 
código de posibles infecciones provocadas por nuestras modificaciones. Solo corremos las pruebas 
cada vez que la incertidumbre invada nuestro trabajo.

## _Exteme programming_
Los códigos de prueb son considerados componenetes de primera clase del proyecto y deben mantener
la misma calidad que el código de implementación sin ningún tipo de duplicación de código. Los 
desarrolladores liberan las unidades de prueba para el código en conjunción con que las prueba. Las
pruebas te permiten los beneficios de tener un código más simple, con la seguridad para 
refactorizar, con documentación precisa y actualizada y diseños más modulares.(https://en.wikipedia.org/wiki/Unit_testing#Extreme_programming)

## TDD

Para 
[Michael Feathers](https://learning.oreilly.com/library/view/working-effectively-with/0131177052/ch02.html) 
las pruebas nos permiten tener un flujo de trabajo más amigable. Él plantea una situación en la que
necesitamos modificar a una función complicada. Por suerte, encontramos las pruebas 
para hacerlo. La última persona que tocó el código hizo muchas pruebas. Corremos las pruebas y 
descubrimos que todas pasan. Vemos las pruebas y encontramos cuál es el comportamiento esperado de
la función. Estamos listos para hacer un cambio, pero notamos que es difícil saber qué cambiar. El
código no es claro, y preferimos entenderlo mejor antes de hacer el cambio. Las pruebas no agarran 
todo, así que queremos hacer el código más claro para tener más confianza para hacer las 
modificaciones. Lo que intentamos es que nadie más tenga que pasar por el mismo proceso que nosotros
para entender el código. Eso sería un desperdicio de tiempo. Empezamos con refactorizar el código, 
extraemos algunos métodos y movemos algunos condicionales. Hacemos otros pocos de cambios y 
corremos las pruebas. Notamos que el cambio en las condicionales no fue el correcto porque las 
pruebas fallaron, así que regresamos ese cambio. Cuando terminamos de refactorizar el código es
mucho más claro. Entonces hacemos los cambios que queríamos en el inicio, agregamos más pruebas y
verificamos el comportamiento del código. El siguiente programador que toque este código encontrará
código más limpio y con pruebas que verifique su funcionalidad. 



[Michael Salaverry](https://dev.to/barakplasma/how-i-learned-to-stop-worrying-and-love-tdd-916) 
menciona cuáles son los puntos divertidos de TDD. Pero lo más importate para él es poder modificar 
tu código sin tener miedo. 

## Desventajas
Las pruebas de código son un problema combinado. Por ejemplo, para cada decisión boolean requerimos
al menos dos dos pruebas: una para la salida verdadera y otra para la falsa. Así, para cada linea de 
código, los programadores necesitan tres o cinco lineas de 
[pruebas](https://en.wikipedia.org/wiki/Unit_testing#Limitations_and_disadvantages). Esto toma 
tiempo y su inversión puede no estar a la altura del esfuerzo. Además, el código de las unidades de 
prueba tienen, al menos, las mismas oportunidades que el código que quieren porbar de tener errores.
