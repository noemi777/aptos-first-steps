module aptosz3::condicionales {
    use std::debug::print;
    use std::string::utf8;

    const EDADMINIMA : u64 = 18;

    fun practica() {
        let edadUser : u64 = 16;
        if (edadUser >= EDADMINIMA) {
            print(&utf8(b"Eres mayor de edad, acceso consedido"));
        } else {
            print(&utf8(b"Eres menor de edad, acceso restringido"));
        };

        let passEdad : bool = true;

        assert!(passEdad, EDADMINIMA);

    }

    #[test]
    fun prueba() {
        practica();
    }
}
