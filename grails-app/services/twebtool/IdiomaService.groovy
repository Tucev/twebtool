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
                        idiomaInstance
                                .addToTextos(new Texto(valor:'',clave:it))
                                .save()
                }
        }

        return idiomaInstance
    }

}
