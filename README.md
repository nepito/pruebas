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

The test code is considered a first class project artifact in that it is maintained at the same quality as the implementation code, with all duplication removed. Developers release unit testing code to the code repository in conjunction with the code it tests. Extreme programming's thorough unit testing allows the benefits mentioned above, such as simpler and more confident code development and refactoring, simplified code integration, accurate documentation, and more modular designs[](https://en.wikipedia.org/wiki/Unit_testing#Extreme_programming)

## TDD

Michael Feathers

We need to make a change to a rather long, complicated function. Luckily, we find a set of unit tests in place for it. The last people who touched the code wrote a set of about 20 unit tests that thoroughly exercised it. We run them and discover that they all pass. Next we look through the tests to get a sense of what the code’s actual behavior is.We get ready to make our change, but we realize that it is pretty hard to figure out how to change it. The code is unclear, and we’d really like to understand it better before making our change. The tests won’t catch everything, so we want to make the code very clear so that we can have more confidence in our change. Aside from that, we don’t want ourselves or anyone else to have to go through the work we are doing to try to understand it. What a waste of time!We start to refactor the code a bit. We extract some methods and move some conditional logic. After every little change that we make, we run that little suite of unit tests. They pass almost every time that we run them. A few minutes ago, we made a mistake and inverted the logic on a condition, but a test failed and we recovered in about a minute. When we are done refactoring, the code is much clearer. We make the change we set out to make, and we are confident that it is right. We added some tests to verify the new behavior. The next programmers who work on this piece of code will have an easier time and will have tests that cover its functionality.
(https://learning.oreilly.com/library/view/working-effectively-with/0131177052/ch02.html)

## Desventajas
Software testing is a combinatorial problem. For example, every Boolean decision statement requires at least two tests: one with an outcome of "true" and one with an outcome of "false". As a result, for every line of code written, programmers often need 3 to 5 lines of test code.[11] This obviously takes time and its investment may not be worth the effort. There are problems that cannot easily be tested at all – for example those that are nondeterministic or involve multiple threads. In addition, code for a unit test is likely to be at least as buggy as the code it is testing.[](https://en.wikipedia.org/wiki/Unit_testing#Limitations_and_disadvantages)

