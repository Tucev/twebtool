package twebtool

class Idioma {

        String nombre
        String localeValue
        Proyecto proyecto

        static constraints = {
                nombre(nullable: false, blank: false)
                localeValue(nullable: false, blank: false)
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
