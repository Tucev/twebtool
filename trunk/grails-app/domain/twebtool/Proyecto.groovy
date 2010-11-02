package twebtool

class Proyecto {

    
        String nombre
        String logo

        static constraints = {
                nombre(nullable: false, blank: false)
                logo(nullable: true, blank: true)
        }

        static hasMany = [
                claves: Clave,
                idiomas: Idioma
        ]
    


}
