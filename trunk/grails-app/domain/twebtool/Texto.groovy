package twebtool

class Texto {

        String valor
        Clave clave
        Idioma idioma

        static constraints = {
                valor(nullable: true, blank: true,maxSize: 1000)
        }

        static belongsTo = [
                Clave, 
                Idioma
        ]
 

        @Override public String toString() {
                return valor
        }


}
