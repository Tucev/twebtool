package twebtool

class Idioma {

        String nombre
        String localeValue

        static constraints = {
                nombre(nullable: false, blank: false)
                localeValue(nullable: false, blank: false)
        }

        static hasMany = [
                textos: Texto
        ]



        @Override public String toString() {
                return nombre
        }



}
