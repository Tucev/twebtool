package twebtool

class Proyecto {

    
        String nombre
        String logo

        static constraints = {
                nombre(nullable: false, blank: false, unique:true)
                logo(nullable: true, blank: true)
        }

        static hasMany = [
                claves: Clave,
                idiomas: Idioma
        ]

        @Override public String toString() {
                return nombre
        }

}
