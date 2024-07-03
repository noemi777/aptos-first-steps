module aptosz3::vectores {
    use std::debug::print;
    use std::vector::{borrow}; // Solo para crear un vector no es necesario importar la libreria.
    // Pero las operaciones de los vectores (como push, pop_back) si necesitan que la importes.

    fun practica() {
        let matriz: vector<vector<u16>> = vector[
            vector[16, 22, 16],
            vector[30, 40, 90],
            vector[76, 35, 89]
        ];

        let elemento_uno = *borrow(&matriz, 0);
        print(&elemento_uno);
        let elemento_dos = *borrow(&matriz, 1);
        print(&elemento_dos);
        let elemento_tres = *borrow(&matriz, 2);
        print(&elemento_tres);

    }

    #[test]
    fun prueba() {
        practica();
    }
}
