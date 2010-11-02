package twebtool

class Clave {

        String nombre
        String descripcion


        def textoService

        static constraints = {
                nombre(nullable: false, blank: false)
                descripcion(nullable: true, blank: true)
        }
        
        static hasMany = [
                textos: Texto
        ]


        static mappedBy = [
                textos: "claves"
        ]

        @Override public String toString() {
                return nombre
        }


}
