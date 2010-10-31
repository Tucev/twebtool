package twebtool

class Texto {

        String valor
        Clave claves
        Idioma idiomas

        static constraints = {

        }

        static hasMany = [
                claves: Clave,
                idiomas: Idioma
        ]

        static mappedBy = [
                claves: "textos",
                idiomas: "textos"
        ]

        static belongsTo = [
                Clave, 
                Idioma
        ]
 


        @Override public String toString() {
                return valor
        }


}
