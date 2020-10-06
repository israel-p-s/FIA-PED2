/*Constantes del programa.*/
liberal.
conservador.
progresista.
totalitario.
pLib.
pp.
ciudadanos.
vox.
psoe.
podemos.
falange.

/*Tipos de ideologías y partidos políticos.*/
ideologia(liberal).
ideologia(conservador).
ideologia(progresista).
ideologia(totalitario).
partido(pLib).
partido(pp).
partido(ciudadanos).
partido(vox).
partido(psoe).
partido(podemos).
partido(falange).

/*Lista con las puntuaciones que recibirás según tu respuesta.*/
puntuaciones([0,5,10,5]).

/* Hechos con variables.*/
:-dynamic puntosLP/1,puntosLE/1.
puntosLP([]). 
puntosLE([]).
elemento(_).

/*Comienzo del programa.*/
iniciar:-limpia,inicializarListas,menu.

/*Se imprime por pantalla el menú con todas las opciones posibles.*/
menu:-limpia,nl,tab(10),write('¡AVERIGUA CUAL ES TU IDEOLOGÍA!'),nl,
	tab(10),write('----------------------------------------------'),nl,
	tab(15),write('Este test político le permite localizar su ideología en el Diagrama de Nolan.'),nl,
	tab(15),write('El Diagrama de Nolan va más allá de la tradicional y ambigua división entre izquierda y derecha, 
		desdoblando el espectro político en dos dimensiones: la social, y la económica.'),nl,
	tab(15),write('Descubra en unos pocos minutos su ubicación en el Diagrama de Nolan realizando 
		este sencillo test político de 20 preguntas.'),nl,nl,nl,
	tab(15),write('1) Comenzar el test.'),nl,
	tab(15),write('2) Salir.'),nl,nl,
	tab(15),write('Elija una de las opciones: '),
	read(X),opcion(X).

opcion(1):-limpia,empezar.
opcion(2):-halt.
opcion(_):-limpia,menu.

/* Limpia la pantalla.*/
limpia:-write('\033[2J').

/*Inicializamos las listas usadas para sumar los puntos.*/
inicializarListas:-puntosLE(LE),puntosLP(LP),retract(puntosLE(LE)),
	retract(puntosLP(LP)),asserta(puntosLE([])),
	asserta(puntosLP([])).

/* Empieza la serie de 20 preguntas del test.*/
empezar:-pregunta(1),pregunta(2),pregunta(3),pregunta(4),
	pregunta(5),pregunta(6),pregunta(7),pregunta(8),pregunta(9),
	pregunta(10),pregunta(11),pregunta(12),pregunta(13),pregunta(14),
	pregunta(15),pregunta(16),pregunta(17),pregunta(18),pregunta(19),
	pregunta(20),info,empezarNuevo.

pregunta(1):-nl,tab(5),write('Algunos individuos y medios de comunicación difunden con facilidad opiniones equivocadas con objetivos cuestionables.'),nl,
	tab(10),write('1) Debe prohibirse la difusión de opiniones equivocadas cuyo objetivo sea manipular y/o influir en los demás.'),nl,
	tab(10),write('2) Debe prohibirse la realización de apologías de ideologías extremas.'),nl,
	tab(10),write('3) No debe haber censura de opiniones por parte del Estado en ningún caso.'),nl,
	tab(10),write('4) Prefiero no contestar.')
	,nl,nl,tab(5),write('Elija una de las opciones: '),read(Y),
	respuestaLP(Y),limpia.

pregunta(2):-nl,tab(5),write('La Iglesia realiza ciertas labores de carácter social. Por ello...'),nl,
	tab(10),write('1) El Estado debe contribuir a la financiación de la Iglesia, y tener en cuenta sus valores a la hora de legislar. '),nl,
	tab(10),write('2) El Estado debe ser aconfesional, aunque puede contribuir a la financiación de la Iglesia para sostener 
		su labor social en colegios concertados, centros de asistencia, etc...'),nl,
	tab(10),write('3) La Iglesia debe autofinanciarse, y estar en igualdad de condiciones con cualquier otra asociación.
		El Estado debe permanecer laico.'),nl,
	tab(10),write('4) Prefiero no contestar.')
	,nl,nl,tab(5),write('Elija una de las opciones: '),read(Y),
	respuestaLP(Y),limpia.

pregunta(3):-nl,tab(5),write('La defensa del país corresponde a quienes prestan Servicio Militar en los ejércitos.'),nl,
	tab(10),write('1) El Servicio Militar debe ser obligatorio como forma de contribuir al bien común y/o a la formación de los jóvenes.'),nl,
	tab(10),write('2) El Sercicio Militar debe ser voluntario. Es el mejor modo de tener un ejército profesional y 
		preparado para defender nuestros intereses y compromisos en el exterior.'),nl,
	tab(10),write('3) El Servicio Militar debería ser voluntario en caso de existir ejército, y de ser así, 
		su naturaleza debería limitarse a sus funciones más esenciales de defensa.'),nl,
	tab(10),write('4) Prefiero no contestar.')
	,nl,nl,tab(5),write('Elija una de las opciones: '),read(Y),
	respuestaLP(Y),limpia.

pregunta(4):-nl,tab(5),write('Las relaciones sexuales entre adultos que consienten son un asunto de la esfera privada de las personas. Sin embargo...'),nl,
	tab(10),write('1) Conductas como la homosexualidad, la poligamia o la prostitución deben prohibirse o estar fuertemente controladas.'),nl,
	tab(10),write('2) La prostitución debe prohibirse o estar fuertemente controlada.'),nl,
	tab(10),write('3) Las leyes no deben entrometerse en las relaciones sexuales entre adultos que consientan, en ningún caso.'),nl,
	tab(10),write('4) Prefiero no contestar.')
	,nl,nl,tab(5),write('Elija una de las opciones: '),read(Y),
	respuestaLP(Y),limpia.
	
pregunta(5):-nl,tab(5),write('Las drogas suponen un drama para muchas familias.'),nl,
	tab(10),write('1) El Estado debería combatir el tráfico de drogas con más medios y de un modo más eficaz.'),nl,
	tab(10),write('2) El uso de algunas de las drogas prohibidas actualmente debería ser legal, aunque debería controlarse su distribución.'),nl,
	tab(10),write('3) Deberían legalizarse las drogas, despenalizando su uso y liberalizando su distribución.'),nl,
	tab(10),write('4) Prefiero no contestar.')
	,nl,nl,tab(5),write('Elija una de las opciones: '),read(Y),
	respuestaLP(Y),limpia.
	
pregunta(6):-nl,tab(5),write('La toma de medidas preventivas puede suponer una mejora de la seguridad ciudadana. Sin embargo, 
	en muchos casos éstas chocan con algunos derechos individuales, como el derecho a la intimidad.'),nl,
	tab(10),write('1) La seguridad de todos está por encima de los derechos de uno solo. Las fuerzas de seguridad 
		del Estado no deben ver su función entorpecida porque un posible criminal se ampare en sus derechos individuales.'),nl,
	tab(10),write('2) Las leyes y el poder judicial deben establecer en qué casos se puede anteponer el uso de medidas preventivas 
		de seguridad a ciertos derechos individuales y en qué casos no. '),nl,
	tab(10),write('3) El Estado no debe vulnerar ningún derecho individual por motivos de seguridad.'),nl,
	tab(10),write('4) Prefiero no contestar.')
	,nl,nl,tab(5),write('Elija una de las opciones: '),read(Y),
	respuestaLP(Y),limpia.
	
pregunta(7):-nl,tab(5),write('En ciertas instituciones, grupos o profesiones, existe disparidad entre el número de hombres y mujeres, 
	o entre distintas razas o grupos sociales.'),nl,
	tab(10),write('1) Las cuotas obligatorias son el mejor instrumento para remediar las situaciones de discriminación histórica.'),nl,
	tab(10),write('2) Las ayudas para la integración o los beneficios fiscales a los grupos menos representados son el mejor instrumento 
		para paliar la discriminación.'),nl,
	tab(10),write('3) Cualquier tipo de imposición o beneficio basado en criterios de sexo, raza o grupo social, 
		viola el principio de igualdad ante la ley, y no debe ser impuesto por el Estado.'),nl,
	tab(10),write('4) Prefiero no contestar.')
	,nl,nl,tab(5),write('Elija una de las opciones: '),read(Y),
	respuestaLP(Y),limpia.
	
pregunta(8):-nl,tab(5),write('Las fronteras se utilizan para controlar la inmigración.'),nl,
	tab(10),write('1) Hay que limitar decididamente la entrada de nuevos inmigrantes y/o expulsar a aquellos que no se integren.'),nl,
	tab(10),write('2) El Estado debe regular la inmigración para permitir que los inmigrantes necesarios vengan de un modo legal.'),nl,
	tab(10),write('3) No debe haber diferencias de derechos en función del lugar de nacimiento o nacionalidad.'),nl,
	tab(10),write('4) Prefiero no contestar.')
	,nl,nl,tab(5),write('Elija una de las opciones: '),read(Y),
	respuestaLP(Y),limpia.
	
pregunta(9):-nl,tab(5),write('El Estado moderno suele ir aparejado al concepto de una nación.'),nl,
	tab(10),write('1) El Estado debe promover el sentimiento patriótico y defender la identidad nacional, cultura e idioma que le son propios.'),nl,
	tab(10),write('2) El Estado debe proteger y/o promover la cultura y el idioma que son propios de su nación.'),nl,
	tab(10),write('3) El Estado no debe intervenir en cuestiones tan personales como la identidad o la cultura. 
		Cada ciudadano debe tener la libertad de usar el idioma que considere.'),nl,
	tab(10),write('4) Prefiero no contestar.')
	,nl,nl,tab(5),write('Elija una de las opciones: '),read(Y),
	respuestaLP(Y),limpia.
	
pregunta(10):-nl,tab(5),write('Una de las mayores amenazas para la civilización es el deterioro del Medio Ambiente.'),nl,
	tab(10),write('1) Las leyes deben obligar a contaminar menos imponiendo estrictas limitaciones de contaminantes.'),nl,
	tab(10),write('2) Hay que promover las energías limpias mediante incentivos a aquellos que contaminen menos 
		y cargas a los que contaminan más.'),nl,
	tab(10),write('3) Se contaminaría menos si se estableciesen responsabilidades claras 
		y derechos de propiedad bien definidos con respecto a la contaminación.'),nl,
	tab(10),write('4) Prefiero no contestar.')
	,nl,nl,tab(5),write('Elija una de las opciones: '),read(Y),
	respuestaLP(Y),limpia.
	
pregunta(11):-nl,tab(5),write('La importación de bienes del extranjero puede ser limitada por el Estado mediante diversos instrumentos, 
	como los aranceles aduaneros, las prohibiciones, o ciertas regulaciones.'),nl,
	tab(10),write('1) El Estado debe limitar la entrada de productos de otros países para favorecer a los productores nacionales.'),nl,
	tab(10),write('2) El Estado debe limitar la entrada de productos del tercer mundo, ya que se producen con mano de obra barata.'),nl,
	tab(10),write('3) El Estado no debe limitar el comercio internacional. Éste debe ser libre y los aranceles deben reducirse o eliminarse.'),nl,
	tab(10),write('4) Prefiero no contestar.')
	,nl,nl,tab(5),write('Elija una de las opciones: '),read(Y),
	respuestaLE(Y),limpia.

pregunta(12):-nl,tab(5),write('Los impuestos son necesarios para sufragar los gastos del Estado.'),nl,
	tab(10),write('1) Los ricos deberían pagar más impuestos para aumentar las prestaciones y servicios del Estado.'),nl,
	tab(10),write('2) Los impuestos no deberían subir. Deben ser los justos y necesarios para sufragar los gastos del Estado.'),nl,
	tab(10),write('3) Los impuestos deberían reducirse, aunque para ello haya que recortar algunas prestaciones y servicios del Estado.'),nl,
	tab(10),write('4) Prefiero no contestar.')
	,nl,nl,tab(5),write('Elija una de las opciones: '),read(Y),
	respuestaLE(Y),limpia.

pregunta(13):-nl,tab(5),write('Las pensiones para la jubilación garantizan el bienestar cuando se llega a la tercera edad.'),nl,
	tab(10),write('1) Las pensiones de jubilación deben ser gestionadas por el Estado con un sistema público de 
		contribuciones obligatorias (Seguridad Social).'),nl,
	tab(10),write('2) Las pensiones de jubilación deben estar garantizadas por el Estado, con algún tipo de modelo mixto que pueda conjugar 
		un sistema público y planes privados.'),nl,
	tab(10),write('3) Las pensiones de jubilación son un asunto de ahorro y planificación individual. El Estado no debe 
		exigir contribuciones obligatorias a un sistema público.'),nl,
	tab(10),write('4) Prefiero no contestar.')
	,nl,nl,tab(5),write('Elija una de las opciones: '),read(Y),
	respuestaLE(Y),limpia.

pregunta(14):-nl,tab(5),write('Los pobres y necesitados dependen de la solidaridad del resto de la sociedad.'),nl,
	tab(10),write('1) El Estado debe encargarse de eliminar o reducir la desigualdad y la pobreza en la sociedad.'),nl,
	tab(10),write('2) El Estado debe gestionar la ayuda y asistencia adecuada a los necesitados, independientemente de que las 
		instituciones privadas de caridad puedan complementarla voluntariamente.'),nl,
	tab(10),write('3) Las instituciones privadas de caridad deben ser las principales canalizadoras de la solidaridad de la sociedad.'),nl,
	tab(10),write('4) Prefiero no contestar.')
	,nl,nl,tab(5),write('Elija una de las opciones: '),read(Y),
	respuestaLE(Y),limpia.
	
pregunta(15):-nl,tab(5),write('Algunas profesiones requieren una cierta cualificación para ejercerlas.'),nl,
	tab(10),write('1) Los sectores profesionales tienen que estar regulados por las leyes. El ejercicio de las profesiones cualificadas 
		debe requerir de las oportunas licencias y permisos otorgadas en cada caso por el órgano competente del Estado.'),nl,
	tab(10),write('2) Los sectores profesionales deben estar regulados por organismos independientes, como los colegios profesionales. 
		Los profesionales cualificados deben colegiarse en ellos, ya que su supervisión garantiza la calidad de sus servicios.'),nl,
	tab(10),write('3) Las licencias, permisos y colegios profesionales son trabas innecesarias. El ejercicio de cualquier 
		profesión debe ser libre para cualquier persona cualificada.'),nl,
	tab(10),write('4) Prefiero no contestar.')
	,nl,nl,tab(5),write('Elija una de las opciones: '),read(Y),
	respuestaLE(Y),limpia.
	
pregunta(16):-nl,tab(5),write('Los sindicatos representan los intereses de los trabajadores.'),nl,
	tab(10),write('1) Los sindicatos son esenciales para proteger los derechos de los trabajadores. 
		El Estado debe proveerles financiación y atribuírles funciones especiales en la legislación laboral.'),nl,
	tab(10),write('2) Los sindicatos, como representantes de los trabajadores, deben contar con ciertas funciones especiales 
		en la legislación laboral, pero no deben ser financiados por el Estado. '),nl,
	tab(10),write('3) Los sindicatos deben regirse por las normas aplicables a cualquier otra asociación, 
		y no recibir financiación pública o atribuírseles funciones especiales.'),nl,
	tab(10),write('4) Prefiero no contestar.')
	,nl,nl,tab(5),write('Elija una de las opciones: '),read(Y),
	respuestaLE(Y),limpia.
	
pregunta(17):-nl,tab(5),write('La cobertura médica es una necesidad eventual para todas las personas.'),nl,
	tab(10),write('1) El Estado debe gestionar centros médicos de carácter público, y financiarlos mediante 
		contribuciones a un seguro médico público de carácter obligatorio (Seguridad Social).'),nl,
	tab(10),write('2) El Estado debe garantizar el acceso universal a la sanidad mediante centros con algún 
		tipo de financiación pública, sean gestionados o no por el Estado.'),nl,
	tab(10),write('3) Gestionar centros médicos no debe ser una función del Estado. Los centros médicos deben 
		ser privados, y los ciudadanos ser libres de contratar el seguro médico que prefieran.'),nl,
	tab(10),write('4) Prefiero no contestar.')
	,nl,nl,tab(5),write('Elija una de las opciones: '),read(Y),
	respuestaLE(Y),limpia.
	
pregunta(18):-nl,tab(5),write('El Banco Central y el sistema bancario, formado por los bancos comerciales, son los que 
	ponen en circulación el dinero de curso legal.'),nl,
	tab(10),write('1) Tanto el Banco Central como los bancos comerciales deben ser públicos y 
		atender a las necesidades sociales.'),nl,
	tab(10),write('2) El Banco Central tiene una función esencial regulando la economía, por lo que debe ser independiente 
		y supervisar a los bancos comerciales.'),nl,
	tab(10),write('3) El Banco Central debería reducir sus competencias, y los bancos comerciales 
		ser todos de carácter privado.'),nl,
	tab(10),write('4) Prefiero no contestar.')
	,nl,nl,tab(5),write('Elija una de las opciones: '),read(Y),
	respuestaLE(Y),limpia.
	
pregunta(19):-nl,tab(5),write('Las grandes superficies tienen ciertas ventajas competetitivas frente al pequeño comercio tradicional.'),nl,
	tab(10),write('1) Algunas Grandes Superficies tienen prácticas de competencia abusivas. Deberían imponérseles 
		condiciones más restrictivas de funcionamiento, o cerrarse.'),nl,
	tab(10),write('2) Se deben corregir algunas ventajas competitivas de las Grandes Superfies, regulando 
		ciertas materias como sus horarios y días de apertura, o el descuento máximo que pueden aplicar.'),nl,
	tab(10),write('3) Las Grandes Superficies son empresas como cualquier otra. Tienen derecho a competir libremente 
		en el mercado, sin restricciones en sus horarios o precios.'),nl,
	tab(10),write('4) Prefiero no contestar.')
	,nl,nl,tab(5),write('Elija una de las opciones: '),read(Y),
	respuestaLE(Y),limpia.
	
pregunta(20):-nl,tab(5),write('Los contratos laborales vinculan a empresarios y trabajadores en sus obligaciones.'),nl,
	tab(10),write('1) La legislación sobre contratos laborales debería restringir más el despido, así como 
		limitar más el empleo precario y garantizar una mayor protección al trabajador.'),nl,
	tab(10),write('2) La legislación sobre contratos laborales debe siempre mantener una protección especial 
		al trabajador, protegiéndole frente al despido y el empleo precario.'),nl,
	tab(10),write('3) Los contratos laborales deben gozar de más libertad de cláusulas entre las partes. 
		La legislación debería interferir menos en materias puramente contractuales, como su duración o causas de rescisión.'),nl,
	tab(10),write('4) Prefiero no contestar.')
	,nl,nl,tab(5),write('Elija una de las opciones: '),read(Y),
	respuestaLE(Y),limpia.


/*Función que almacena en la lista cada opción respondida en las preguntas.*/
respuestaLP(R):-puntosLP(LP),elemento(E),puntuaciones(Puntos),
	recorreLista(Puntos,R,E),inserta(E,LP,Nueva),
	asserta(puntosLP(Nueva)).
respuestaLE(R):-puntosLE(LE),elemento(E),puntuaciones(Puntos),
	recorreLista(Puntos,R,E),inserta(E,LE,Nueva),
	asserta(puntosLE(Nueva)).

/*Prepara la información para que pueda ser mostrada.*/
info:-nl,puntosLP(PtosLP),suma(PtosLP,SLP),puntosLE(PtosLE),suma(PtosLE,SLE),tipoIdeologia(SLP,SLE,I), eligePartido(SLP,SLE,P),
	resultado(SLE,SLP,I,P).
	
/*Muestra por pantalla el resultado.*/
resultado(SLE,SLP,I,P):-nl,tab(5),write('Test finalizado.'),nl,nl,
	tab(10),write('Su puntuación ha sido: '),write(SLE),write(' respecto a la libertad económica y '),write(SLP),write(' respecto a la libertad personal.'),nl,
	tab(10),write('Es por eso que perteneces al espectro de ideología '),write(I),write('.'),nl,
	tab(10),write('Además, el partido que se encuentra en este espectro, y tal vez, más se le acerque es: '),write(P),write('.'),nl,nl,nl.
	

/*Calcula la ideología según los resultados del test.*/
tipoIdeologia(NumA,NumB,I):-NumA>=50,NumB>=50,I=liberal,ideologia(I);
        NumA>=50,NumB<50,I=progresista,ideologia(I);
        NumA<50,NumB>=50,I=conservador,ideologia(I);
		NumA<50,NumB<50,I=totalitario,ideologia(I).
		
/*Calcula el partido correspondiente según el test.*/
eligePartido(NumA,NumB,P):-NumA>=50,NumB>=50,P=pLib,partido(P);
        NumA>=50,NumB<20,P=podemos,partido(P);
		NumA>=50,NumB=<20,NumB<50,P=psoe,partido(P);
        NumA<20,NumB>=50,P=ciudadanos,partido(P);
		NumA=<20,NumA<30,NumB>=50,P=vox,partido(P);
		NumA=<30,NumA<50,NumB>=50,P=pp,partido(P);
		NumA<50,NumB<50,P=falange,partido(P).

/*Posibilidad de repetir, o no el test.*/
empezarNuevo:-nl,write('¿Quiere repetir el test y/n?: '),read(Y),leer(Y).
leer(y):-inicializarListas,limpia,empezar.
leer(n):-menu.
leer(_):-limpia,empezarNuevo.

/*Funciones auxilares para recorrer o insertar un elemento en una lista.*/
recorreLista([Y|_],1,Y). %Recorre la lista
recorreLista([_|Xs],N,Y):-N2 is N-1,recorreLista(Xs,N2,Y).
inserta(Y,Lista,[Y|Lista]). %Inserta un elemento en la lista

/*Suma todos los números enteros de una lista.*/
suma([],0).
suma([L|Cola],Total):-suma(Cola,Aux),Total is Aux+L.