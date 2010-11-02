package twebtool

class IdiomaService {

    static transactional = true

    def serviceMethod() {

    }

    def newIdioma(params){
        def idiomaInstance = new Idioma(params)
        if(idiomaInstance.validate()){
                idiomaInstance.save()
                def claves = Clave.findAll();
                claves.each{
                        def texto = new Texto(valor:'')
                                .addToClaves(it)
                                .addToIdiomas(idiomaInstance)
                                .save()
                }
        }

        return idiomaInstance
    }

    def deleteIdioma(params){
        def idiomaInstance = Idioma.get(params.id)

        def textos = Texto.findAllByIdioma(idiomaInstance);
                textos.each{
                        println it.nombre
                        it.delete(flush:true);
                }
        idiomaInstance.delete(flush:true)
   
    }

}
