module cuenta::almacenamiento_global {
    use std::signer; 

    struct Contador has key { 
        valor: u64,
        maximo: u64, 
        minimo: u64, 
        total: u64, 
     }
    public entry fun publicar(cuenta: &signer, valor: u64, maximo: u64, minimo: u64, total: u64) { // 
        let recurso = Contador { valor, maximo, minimo, total}; 
        move_to(cuenta, recurso)
    }

    
    #[view] // Podemos especificar que es un metodo de vista
    public fun obtener_contador(direccion: address): u64 acquires Contador {
        // Usamos borrow_global para obtener ese recurso.
        borrow_global<Contador>(direccion).valor 
    }

    public entry fun incrementar(direccion: address) acquires Contador { 
        let referencia_contador = &mut borrow_global_mut<Contador>(direccion).valor; // Y accedemos a su campo valor usando .
        *referencia_contador = *referencia_contador + 1 
    }

    
    public entry fun restablecer(cuenta: &signer) acquires Contador { 
        let referencia_contador = &mut borrow_global_mut<Contador>(signer::address_of(cuenta)).valor; 
        *referencia_contador = 0
    }


    #[view] // Solo estamos validando algo, asi que podemos usarlo como view
    public fun existe(direccion: address): bool { // No estamos adquiriendo el recurso, solo estamos verificando si existe o no
        exists<Contador>(direccion) 
    }

    
    public entry fun eliminar(cuenta: &signer) acquires Contador { 
        let contador = move_from<Contador>(signer::address_of(cuenta)); 
        let Contador { valor: _, maximo: _, minimo: _, total: _ } = contador; 
    }

    #[view]
    public fun operaciones(direccion: address): u64 acquires Contador { 
        borrow_global<Contador>(direccion).maximo 
    }

    public entry fun maximonumero(direccion: address) acquires Contador { 
        let maximo_n = &mut borrow_global_mut<Contador>(direccion).maximo; // Y accedemos a su campo valor usando .
        *maximo_n = 100
    }

    public entry fun minimonumero(direccion: address) acquires Contador { 
        let minimo_n = &mut borrow_global_mut<Contador>(direccion).minimo; // Y accedemos a su campo valor usando .
        *minimo_n = 0
    }

    public entry fun totalnumero(direccion: address) acquires Contador { 
        let total_n = &mut borrow_global_mut<Contador>(direccion).total; // Y accedemos a su campo valor usando .
        *total_n = 1000
    }

    

}
