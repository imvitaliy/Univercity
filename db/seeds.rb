university1 = University.create({
	public: 				 true,
	image: 			   	 'Universidad-Alcala.jpg',
	name: 					 'UAH',
	city: 					 'Madrid',
	students_number: '28.366',
	description: 		 'Bienvenidos a la Universidad de Alcalá, Patrimonio de la Humanidad, una de las universidades más antiguas de Europa, que tiene su origen en el Estudio General creado el 20 de Mayo de 1293. En el año 1499, el Cardenal Cisneros dio un nuevo impulso a estos estudios con la creación de un Colegio Mayor y la Universidad de Alcalá pasó a ser uno de los primeros ejemplos de ciudad universitaria.'
})
university2 = University.create({
	public: 				 true,
	image: 			   	 'UAM.jpg',
	name: 					 'Universidad Autonoma de Madrid',
	city: 					 'Madrid',
	students_number: '27.773',
	description: 		 'La Universidad Autónoma de Madrid (UAM) es una universidad pública española, ubicada en Madrid y fundada en 1968,2 momento en que sus facultades estaban dispersas por diversos edificios de la capital española. No obstante, la localización actual de esta universidad es el campus de Cantoblanco, al norte de la ciudad de Madrid, junto a Alcobendas y San Sebastián de los Reyes. Dicho campus, con 2 252 000 m² de superficie total, se inauguró el 25 de octubre de 1971, y es considerado uno de los 24 campus medioambientalmente sostenibles del mundo.'
})
university3 = University.create({
	public: 				 true,
	image: 			   	 'barcelona.JPG',
	name: 					 'Universidad de Barcelona',
	city: 					 'Barcelona',
	students_number: '63.020',
	description: 		 'La Universidad de Barcelona es la universidad pública principal de Cataluña, con el mayor número de estudiantes y la oferta formativa más amplia y completa. Además, es el principal centro de investigación universitario del Estado y uno de los más importantes de Europa, tanto por el número de programas de investigación como por la excelencia lograda en este terreno.'
})


study1 = Study.create({
	name: 				'Facultad de derecho',
	undergraduate: false,
	description: 	'Las enseñanzas de Grado en Derecho de la Universidad de Alcalá tienen como finalidad la obtención por parte del estudiante de una formación jurídica general orientada a la preparación para el ejercicio de actividades de caráctr profesional (empresas, bufetes, instituciones púbicas, administraciones y además organismos del ámbito jurídico). Dicho ítulo permite realizar el Máster de Acceso a la Abogacía, que junto con las posteriores pruebas de acceso, habilita para el ejercicio profesional como abogado y procurador.'
})

study2 = Study.create({
	name: 				 'Grado en Ingeniería Informática',
	undergraduate: false,
	description: 	 'El plan de estudios de Ingeniería de Computadores, ha sido diseñado basándose en las recomendaciones de la Association for Computing Machinery (ACM) para Computer Science. De forma más explícita, el futuro graduado poseerá un perfil que lo capacite para la dirección de departamentos o equipos de desarrollo, dirección y organizació de proyectos; gestión y desarrollo de sistemas informáticos, su análisis, el control y gestión, la creación, gestión y mantenimiento de bases de datos, y la realización de auditorías informáticas.'
})
study3 = Study.create({
	name: 				 'Facultad de derecho',
	undergraduate: true,
	description: 	 'El nuevo Grado en Derecho es el resultado de la adaptación de la prestigiosa titulación de Derecho de la UAM al nuevo contexto europeo. La reforma operada no tiene un impacto relevante en materia de contenidos, pero viene a incrementar la visión práctica a la que se smeten las enseñanzas, lo que ayuda a preparar a profesionales más aptos para incorporarse de forma inmediata al mercado de trabajo.'
})
study4 = Study.create({
	name: 				 'Facultad de Medicina',
	undergraduate: true,
	description:   'El Campus de Medicina comprende la Facultad de Medicina, el Instituto de Investigaciones Biomédicas Alberto Sols, centro mixto UAM-CSIC, y el Instituto Teófilo Hernando de I+D del Medicamento. Se encuentra situado en la zona norte de Madrid, a 100 metros del Hospital Universitario de La Paz, uno de los seis hospitales vinculados, y a menos de 1 Km de dos centros de investigación de primer nivel, adheridos a la propuesta de campus de excelencia internacional UAM-CSIC y adscritos al Instituto de Salud Carlos III.'
})
study5 = Study.create({
	name: 				 'Facultad de Derecho',
	undergraduate: true,
	description:   'El nuevo Grado en Derecho es el resultado de la adaptación de la prestigiosa titulación de Derecho de la UAM al nuevo contexto europeo. La reforma operada no tiene un impacto relevante en materia de contenidos, pero viene a incrementar la visión práctica a la que se smeten las enseñanzas, lo que ayuda a preparar a profesionales más aptos para incorporarse de forma inmediata al mercado de trabajo.'
})


Faculty.create([{
	study_id: 		 study1.id,
	university_id: university1.id,
	global_score:  8.4
}, {
	study_id: 		 study2.id,
	university_id: university1.id,
	global_score:  8.2
},{
	study_id: 		 study3.id,
	university_id: university2.id,
	global_score:  8.5
},{
	study_id: 		 study4.id,
	university_id: university2.id,
	global_score:  8.7
},{
	study_id: 		 study5.id,
	university_id: university3.id,
	global_score:  8.3
}])

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
