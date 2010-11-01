package twebtool

class TextoService {

    static transactional = true

    def serviceMethod() {

    }

    def initializeByIdioma(Idioma idioma){
        println "Texto Service initializeByIdioma ${idioma.nombre}"
        def claves = Clave.findAll();
        claves.each{
                def texto = new Texto(valor:'')
                        .addToIdiomas(idioma)
                        .addToClaves(it)
                        .save()
        }
    }

    def initializeByClave(Clave clave){
        println "Texto Service initializeByClave ${clave.nombre}"
        def idiomas = Idioma.findAll();
        idiomas.each{
                def texto = new Texto(valor:'')
                        .addToClaves(clave)
                        .addToIdiomas(it)
                        .save()
        }
    }
}
