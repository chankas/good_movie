# Load Category and Movie data
["Acción", "Animación", "Aventura", "Bélica", "Ciencia ficción", "Comedia", "Crimen", "Documental", "Drama", "Familia", "Fantasía", "Historia" , "Misterio", "Música", "Película de TV", "Romance", "Suspenso", "Terror", "Wester" ].each do |genre_name|
  Category.create!(name: genre_name)
end

Movie.create!(
  title: "Sharknado", 
  original_title: "Sharknado", 
  overview: "Una ciudad está aterrorizada por miles de tiburones que han sido transportados por un huracán. Cuando los tornados se empiezan a formar, los mortíferos escualos comienzan su destrucción en el agua, la tierra y en el aire.",
  release_date: "2013-07-11",
  poster_path: "https://image.tmdb.org/t/p/w1280/atEmHkVFTSGRYt2PeCiziQqbZnI.jpg",
  original_language: "en",
  vote_average: 3.5,
  category_ids: [Category.find_by(name: "Ciencia ficción").id, Category.find_by(name: "Acción").id, Category.find_by(name: "Comedia").id]
)

Movie.create!(
  title: "Duro de matar",
  original_title: "Die Hard",
  overview: "Un policía de Nueva York, John McClane, se encuentra en Los Ángeles para pasar la Navidad con su esposa Holly. Mientras
  tanto, un grupo de terroristas toma el edificio Nakatomi Plaza y toma a todos los ocupantes del edificio como rehenes. Todos, excepto McClane, que logra escapar y se convierte en la única esperanza para los rehenes.",
  release_date: "1988-07-15",
  poster_path: "https://image.tmdb.org/t/p/original/6VMqX6fnQZ7IkNfa6RJG2PSeOrc.jpg",
  original_language: "en",
  vote_average: 7.7,
  category_ids: [Category.find_by(name: "Acción").id, Category.find_by(name: "Suspenso").id]
)

Movie.create!(
  title: "El rey león",
  original_title: "The Lion King",
  overview: "Simba, un cachorro de león, es el heredero al trono de la selva. Sin embargo, cuando su padre es asesinado por su tío Scar, Simba es condenado al exilio. Con la ayuda de sus amigos Timón y Pumba, Simba deberá enfrentar a su tío y reclamar su lugar en el ciclo de la vida.",
  release_date: "1994-06-23",
  poster_path: "https://www.themoviedb.org/t/p/w1280/b0MxU37dNmMwKtoPVYPKOZSIrIn.jpg",
  original_language: "en",
  vote_average: 8.3,
  category_ids: [Category.find_by(name: "Animación").id, Category.find_by(name: "Aventura").id, Category.find_by(name: "Familia").id]
)

Movie.create!(
  title: "Atrápame si puedes ",
  original_title: "Catch Me If You Can",
  overview: "Frank Abagnale Jr. es un joven estafador que se hace pasar por piloto, médico y abogado. Carl Hanratty, un agente del FBI, se encarga de atraparlo. Sin embargo, Frank siempre logra escapar y Carl se convierte en una obsesión para él.",  
  release_date: "2002-12-25",
  poster_path: "https://www.themoviedb.org/t/p/w1280/wcWi3xIEzIjDERTZyWoqryQGURA.jpg",
  original_language: "en",
  vote_average: 7.9,
  category_ids: [Category.find_by(name: "Crimen").id, Category.find_by(name: "Drama").id]
)

Movie.create!(
  title: "Toy Story",
  original_title: "Toy Story",
  overview: "Woody, un vaquero de juguete, es el juguete favorito de Andy. Sin embargo, cuando Andy recibe un nuevo juguete, Buzz Lightyear, Woody se siente amenazado y celoso. Juntos, Woody y Buzz deberán superar sus diferencias y trabajar juntos para regresar a casa.", 
  release_date: "1995-11-22",
  poster_path: "https://www.themoviedb.org/t/p/w1280/jvn7wy3RSNEXnFSXLpH2of2LcV6.jpg",
  original_language: "en",
  vote_average: 7.9,
  category_ids: [Category.find_by(name: "Animación").id, Category.find_by(name: "Aventura").id, Category.find_by(name: "Comedia").id, Category.find_by(name: "Familia").id]
)

Movie.create!(
  title: "El Padrino",
  original_title: "The Godfather",
  overview: "Don Vito Corleone, jefe de una de las cinco familias de la mafia de Nueva York, es un hombre de principios que se ve obligado a ceder el control de su imperio a su hijo Michael. Sin embargo, cuando Michael se ve envuelto en una guerra de bandas, deberá tomar decisiones que cambiarán su vida para siempre.",  
  release_date: "1972-03-14",
  poster_path: "https://www.themoviedb.org/t/p/w1280/3bhkrj58Vtu7enYsRolD1fZdja1.jpg",
  original_language: "en",
  vote_average: 8.7,
  category_ids: [Category.find_by(name: "Crimen").id, Category.find_by(name: "Drama").id]
)

Movie.create!(
  title: "El señor de los anillos: La comunidad del anillo",
  original_title: "The Lord of the Rings: The Fellowship of the Ring",
  overview: "Frodo Bolsón, un hobbit, recibe un anillo mágico que le otorga poderes especiales. Sin embargo, el anillo es codiciado por Sauron, el Señor Oscuro, que hará todo lo posible por recuperarlo. Frodo deberá emprender un viaje para destruir el anillo y salvar a la Tierra Media.",
  release_date: "2001-12-19",
  poster_path: "https://www.themoviedb.org/t/p/w1280/56zTpe2xvaA4alU51sRWPoKPYZy.jpg",
  original_language: "en",
  vote_average: 8.3,
  category_ids: [Category.find_by(name: "Aventura").id, Category.find_by(name: "Fantasía").id]
)
Movie.create!(
  title: "El origen",
  original_title: "Inception",
  overview: "Dom Cobb es un ladrón de sueños que se dedica a robar secretos del subconsciente de las personas mientras duermen. Sin embargo, cuando se le presenta la oportunidad de implantar una idea en la mente de alguien, Cobb deberá enfrentar su pasado y sus demonios para lograr su objetivo.",
  release_date: "2010-07-16",
  poster_path: "https://www.themoviedb.org/t/p/w1280/9gk7adHYeDvHkCSEqAvQNLV5Uge.jpg",
  original_language: "en",
  vote_average: 8.3,
  category_ids: [Category.find_by(name: "Acción").id, Category.find_by(name: "Ciencia ficción").id, Category.find_by(name: "Suspenso").id]
)
Movie.create!(
  title: "The truman show",
  original_title: "The Truman Show",
  overview: "Truman Burbank es un hombre común y corriente que vive en un pueblo común y corriente. Sin embargo, lo que Truman no sabe es que su vida es un programa de televisión y que todo lo que le rodea es falso. Cuando descubre la verdad, Truman deberá decidir si quiere seguir viviendo en una mentira o si prefiere la verdad, por más dolorosa que sea.",
  release_date: "1998-06-04",
  poster_path: "https://www.themoviedb.org/t/p/w1280/4BGVZSwv5n0hMIAWwiSjMFDQ63K.jpg",
  original_language: "en",
  vote_average: 8.1,
  category_ids: [Category.find_by(name: "Comedia").id, Category.find_by(name: "Drama").id]
)

Movie.create!(
  title: "El club de la pelea",
  original_title: "Fight Club",
  overview: "Un hombre común y corriente, sin nombre, conoce a Tyler Durden, un vendedor de jabón que le propone formar un club de pelea. Juntos, los dos hombres crean un club secreto donde los hombres pueden pelear entre sí para liberar su ira y su frustración. Sin embargo, cuando el club de la pelea se convierte en algo más grande, el protagonista deberá enfrentar las consecuencias de sus actos.",  
  release_date: "1999-10-15",
  poster_path: "https://www.themoviedb.org/t/p/w1280/sgTAWJFaB2kBvdQxRGabYFiQqEK.jpg",
  original_language: "en",
  vote_average: 8.8,
  category_ids: [Category.find_by(name: "Drama").id, Category.find_by(name: "Suspenso").id]
)

Movie.create!(
  title: "El vengador del futuro",
  original_title: "Total Recall",
  overview: "Douglas Quaid es un hombre común y corriente que vive en un mundo futurista. Sin embargo, cuando Quaid decide someterse a un procedimiento para implantar recuerdos falsos en su mente, descubre que su vida entera ha sido una mentira. Quaid deberá emprender un viaje para descubrir la verdad y salvar a la Tierra de una invasión alienígena.",
  release_date: "1990-06-01",
  poster_path: "https://www.themoviedb.org/t/p/w1280/v7DoneFNYIrCGeNFiPrqGiQlimN.jpg",
  original_language: "en",
  vote_average: 7.5,
  category_ids: [Category.find_by(name: "Acción").id, Category.find_by(name: "Ciencia ficción").id]
)

Movie.create!(
  title: "El sexto sentido",
  original_title: "The Sixth Sense",
  overview: "Malcolm Crowe es un psicólogo infantil que recibe la visita de un niño llamado Cole Sear. Cole le confiesa a Malcolm que puede ver a los muertos y que necesita su ayuda para entender lo que le sucede. Juntos, Malcolm y Cole deberán enfrentar sus miedos y descubrir la verdad detrás de los fantasmas que atormentan a Cole.",
  release_date: "1999-08-06",
  poster_path: "https://www.themoviedb.org/t/p/w1280/wcnLlfQ2USwvyYbd6XgtNEOQfMT.jpg",
  original_language: "en",
  vote_average: 8.1,
  category_ids: [Category.find_by(name: "Drama").id, Category.find_by(name: "Misterio").id]
)

Movie.create!(
  title: "El silencio de los inocentes",
  original_title: "The Silence of the Lambs",
  overview: "Clarice Starling, una agente del FBI, es asignada para investigar el caso de un asesino en serie conocido como Buffalo Bill. Para atrapar a Buffalo Bill, Clarice deberá pedir ayuda al Dr. Hannibal Lecter, un psiquiatra y asesino en serie que se encuentra encarcelado. Sin embargo, Lecter tiene sus propios planes y Clarice deberá enfrentar sus miedos para salvar a la próxima víctima de Buffalo Bill.",
  release_date: "1991-02-14",
  poster_path: "https://www.themoviedb.org/t/p/w1280/8FdQQ3cUCs9goEOr1qUFaHackoJ.jpg",
  original_language: "en",
  vote_average: 8.6,
  category_ids: [Category.find_by(name: "Crimen").id, Category.find_by(name: "Drama").id, Category.find_by(name: "Suspenso").id]
)

Movie.create!(
  title: "El viaje de Chihiro",
  original_title: "Spirited Away",
  overview: "Chihiro es una niña de diez años que se muda a un nuevo pueblo con sus padres. Sin embargo, cuando sus padres son transformados en cerdos por un hechizo, Chihiro deberá emprender un viaje para salvarlos. En su camino, Chihiro conocerá a Haku, un misterioso chico que le ayudará a enfrentar sus miedos y descubrir su verdadero destino.",
  release_date: "2001-07-20",
  poster_path: "https://www.themoviedb.org/t/p/w1280/laXrmaTRuroArSPfsGlvTbeWxVA.jpg",
  original_language: "en",
  vote_average: 8.6,
  category_ids: [Category.find_by(name: "Animación").id, Category.find_by(name: "Aventura").id, Category.find_by(name: "Fantasía").id]
)

Movie.create!(
  title: "El aro",
  original_title: "The Ring",
  overview: "Rachel Keller es una periodista que investiga la misteriosa muerte de su sobrina. Cuando descubre que su sobrina murió después de ver un video maldito, Rachel decide investigar el origen del video y descubrir la verdad detrás de la maldición. Sin embargo, Rachel descubrirá que la maldición es real y que su vida corre peligro.",
  release_date: "2002-10-18",
  poster_path: "https://www.themoviedb.org/t/p/w1280/4TPPSB8OAtgYo9EdFzr7tsTsLDB.jpg",
  original_language: "en",
  vote_average: 7.1,
  category_ids: [Category.find_by(name: "Misterio").id, Category.find_by(name: "Suspenso").id, Category.find_by(name: "Terror").id]
)

Movie.create!(
  title: "El resplandor",
  original_title: "The Shining",
  overview: "Jack Torrance es un escritor que acepta un trabajo como cuidador de un hotel en invierno. Sin embargo, cuando Jack y su familia se mudan al hotel, empiezan a suceder cosas extrañas. Jack comienza a tener visiones y a perder la cordura, mientras que su hijo Danny descubre que el hotel está maldito. Juntos, Jack y Danny deberán enfrentar sus miedos y descubrir la verdad detrás del resplandor.",
  release_date: "1980-05-23",
  poster_path: "https://www.themoviedb.org/t/p/w1280/mm003Mj2e9kJRsrxiVdPn2BSBPh.jpg",
  original_language: "en",
  vote_average: 8.4,
  category_ids: [Category.find_by(name: "Drama").id, Category.find_by(name: "Suspenso").id, Category.find_by(name: "Terror").id]
)