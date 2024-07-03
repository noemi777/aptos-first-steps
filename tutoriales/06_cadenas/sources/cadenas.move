module aptosz3::cadenas {
    use std::debug::print;
    use std::string::{utf8, append};


    fun practica() {
        
        let poema = b"Te vi un punto y, flotando ante mis ojos, la imagen de tus ojos se quedo, como la mancha oscura orlada en fuego que flota y ciega si se mira al sol.";
        print(&utf8(poema));

        let linea_uno = utf8(b"Te vi un punto y, flotando ante mis ojos, ");
        let linea_dos = utf8(b"la imagen de tus ojos se quedo, ");
        let linea_tres = utf8(b"como la mancha oscura orlada en fuego ");
        let linea_cuatro = utf8(b"que flota y ciega si se mira al sol. ");


        let concatenacion = utf8(b"");
        append(&mut concatenacion, linea_uno);
        append(&mut concatenacion, linea_dos);
        append(&mut concatenacion, linea_tres);
        append(&mut concatenacion, linea_cuatro);
        print(&concatenacion);

        //¿Cuál de los dos métodos crees que es mejor y porqué?
        //El segundo método es mejor, ya que se pueden concatenar cadenas de manera más sencilla y rápida, puedes también manipular las cadenas de manera más sencilla, el tamaño de la cadena no es fijo, por lo que puedes agregar más texto a la cadena sin tener que preocuparte por el tamaño de la cadena.
    }

    #[test]
    fun prueba() {
        practica();
    }
}
