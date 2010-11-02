package twebtool

class Texto {

        String valor
        Clave clave
        Idioma idioma

        static constraints = {
                valor(nullable: true, blank: true)
        }

        static belongsTo = [
                Clave, 
                Idioma
        ]
 

        @Override public String toString() {
                return valor
        }


}
