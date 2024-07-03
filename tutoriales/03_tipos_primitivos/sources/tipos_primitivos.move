module index::tipos_primitivos {
    use std::debug::print;
    const ENTERO: u16 = 3;
    
    fun practica() {
       
        let entero: u16 = 10;
        print(&entero);
        print(&ENTERO);

        let comparacion: bool = ENTERO == entero;
        print(&comparacion);
        let mayor: bool = ENTERO > entero;
        print(&mayor);
        let comparacion_dos: bool = comparacion && mayor;
        print(&comparacion_dos);
    }

    #[test]
    fun prueba() {
        practica();
    }
}
