package twebtool

class Clave {

        String nombre
        String descripcion
        Proyecto proyecto

        static constraints = {
                nombre(nullable: false, blank: false)
                descripcion(nullable: true, blank: true)
        }
        
        static hasMany = [
                textos: Texto
        ]

        static belongsTo = [
                Proyecto
        ]

        @Override public String toString() {
                return nombre
        }


}
