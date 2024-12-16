# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
  ### ojito que para todos los archivos se debe cuidar los acondicionamientos o acuerdos de como se nombran los archivos

los comandos para poder iniciar el servidor de manera eficiente son rails server
para crear objetos dentro de la base de datos es con Product.create
en este tengo un pco de dudas pero volvere a revsiar el video 2 y 3 que es como se crea la tabla de la base de datos de los productos

los controllers son donde nosotros definiremos la "lógica"de la aplicación en este caso yo defini el products controller para poder obtener los datos o bueno nuestros productos

los routes estan denro de la carpeta config estos nos permitiran redirigir a las paginas de manera eficiente, definir las rutas e incluso algunos tipos de peticiones yd atos que se puedan mostrar

lyouts son las partes del proyecto donde se pondran las vistas predefinidas de html la etiqueta yield es para renderizar las poartes de las paginas que les mandemos llamar


los partials son para poder tener una vista más limpia dentro de nuestra página 
en este caso es como las secciones a como yo le entendí
estos se ponen en la carpeta shared


los tests
se usan para comprobar de forma autonoma que los elementos de la app funcionen correctamente, creo que son como los QA
así la app solita se encarga de comprobar si todo funciona y asi nos avisa si algo que le movimos pueda ser que se haya roto o crasheado
aqui se añaden

para correr los test se usan rails test, los test leen el html asi que hay que poner todo tal cual con espacios, sino igual la consola te lo indica.


las valdiacioens se agregan al modelo, ahi te creas tu propio archivo, aunque yo ya tenía creado un porduct_test.rb me dio problemas con el video numero 15

### Fixtures s
Productos que se van a relleenar en la base de datos para neustros test

asegurate bien de que todo este escrito como debe de ser

se realizo un partial dentro de productos porque a lo que entendí no debemos de repetir codigo al mismo nivel de los archivos 

17 con esto de crear el partial para evitar usarlo en el edit.html es un concepto llamado refactorizar el codigo y aun más especifico el principio de software llamado dry dont repeat yourself, a manera de resumen, es que no repitamos  codigo para asi no tener tanto codigo duplicado en muchos sitios o archivos.

18. para poder actualizxar el producto lo que realizamos es una ruta de tipo patch para poder actualizar los recursos exixtentes, en este caso para poder actuzalizar nuestros productos.

me han estado dando errores con los test, se que tiene qu ever con el redirect_to product path pero no he podido conseguir corregir el error


para que se muestre una imagen es necesario poner el image_tag y seleccionar nuestra varaible que contiene la informacion de los porductos, porque ahí se esta cargando el parametro de la imagen, además si no todos los productos tienen una imagen pues es ahí donde podría tiarnos errores la pagina

Con refactorizar nos referimos a que realizaremos un cambio en el codigo para simplificar las funciones y así poder tener un funcionamiento más pulcro 

### en config 
viene la conmnfiguracio de nuestra apliacion en  el archivo application.rb  podemos declarar idiomas disponibles dentro de nuestra aplicacion entre otras cosas
para poder corregir el problema con la traduccion lo que realizamos fue especificar la ruta de la traduccion al mandar llamar el "metodo o la traduccion" tammbien tenia unos errores con la idetnacion dentro de la definicion del lenguaje