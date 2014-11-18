university = University.create({
	public: 				 true,
	image: 			   	 'Universidad-Alcala.jpg',
	name: 					 'UAH',
	city: 					 'Madrid',
	students_number: '28366',
	global_score: 		8.4,
	description: 		 'Bienvenidos a la Universidad de Alcalá, Patrimonio de la Humanidad, una de las universidades más antiguas de Europa, que tiene su origen en el Estudio General creado el 20 de Mayo de 1293. En el año 1499, el Cardenal Cisneros dio un nuevo impulso a estos estudios con la creación de un Colegio Mayor y la Universidad de Alcalá pasó a ser uno de los primeros ejemplos de ciudad universitaria.'
})

study1 = Study.create({
		name: 				'Facultad de derecho',
		undergraduate: false,
		description: 	'Las enseñanzas de Grado en Derecho de la Universidad de Alcalá tienen como finalidad la obtención por parte del estudiante de una formación jurídica general orientada a la preparación para el ejercicio de actividades de caráctr profesional (empresas, bufetes, instituciones púbicas, administraciones y además organismos del ámbito jurídico). Dicho ítulo permite realizar el Máster de Acceso a la Abogacía, que junto con las posteriores pruebas de acceso, habilita para el ejercicio profesional como abogado y procurador.'
})

study2 = Study.create({
		name: 				 'Grado en Ingeniería Informática',
		undergraduate: false,
		description: 	 'El plan de estudios de Ingeniería de Computadores, ha sido diseñado basándose en las recomendaciones de la Association for Computing Machinery (ACM) para Computer Science. De forma más explícita, el futuro graduado poseerá un perfil que lo capacite para la dirección de departamentos o equipos de desarrollo, dirección y organizació de proyectos; gestión y desarrollo de sistemas informáticos, su análisis, el control y gestión, la creación, gestión y mantenimiento de bases de datos, y la realización de auditorías informáticas. Así, el mercado potencial de estos titulados es amplio en las empresas de todos los sectores pero en particular del sector de las tecologías de la información.'
})

Faculty.create([{
	study_id: 		 study1.id,
	university_id: university.id
}, {
	study_id: 		 study2.id,
	university_id: university.id
}])

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
