module aptosz3::cadenas {
    use std::debug::print;
    use std::string_utils::debug_string;
    use std::string::{String,utf8};

    struct Persona has drop{ // Ahora creamos un tipo con mas campos.
        nombre: String,
        edad: u8,
        ano_nacimiento: u16,
    } // Nota que no cerramos con ;

    struct Clase has drop{
        materia: String,
        salon: String,
        alumnos: u8,
        horario: String,
        maestro: Persona,
    }

    struct Escuela has drop{
        nombre: String,
        domicilio: String,
        clases: vector<Clase>,
    }
    
    fun practica() {

        let escuela= Escuela{
            nombre: utf8(b"Escuela de programacion"),
            domicilio: utf8(b"Calle Reforma # 10 Col. Centro C.P. 12345, Ciudad de Mexico"),
            clases: vector[
                Clase{
                    materia: utf8(b"Programacion en Rust"),
                    salon: utf8(b"Aula 1"),
                    alumnos: 20,
                    horario: utf8(b"Lunes y Miercoles de 8 a 10"),
                    maestro: Persona{
                        nombre: utf8(b"Juan Perez Torres"),
                        edad: 39,
                        ano_nacimiento: 1985,
                    },
                },
                Clase{
                    materia: utf8(b"Programacion en C++"),
                    salon: utf8(b"Aula 2"),
                    alumnos: 15,
                    horario: utf8(b"Martes y Jueves de 8 a 10"),
                    maestro: Persona{
                        nombre: utf8(b"Maria Lopez Trejo"),
                        edad: 34,
                        ano_nacimiento: 1990,
                    },
                },
                Clase{
                    materia: utf8(b"Programacion en Python"),
                    salon: utf8(b"Aula 3"),
                    alumnos: 25,
                    horario: utf8(b"Viernes de 8 a 10"),
                    maestro: Persona{
                        nombre: utf8(b"Pedro Ramirez Sanchez"),
                        edad: 44,
                        ano_nacimiento: 1980,
                    },
                },
            ],
        };

        print(&debug_string(&escuela));

    }

    #[test]
    fun prueba() {
        practica();
    }
}
