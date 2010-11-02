package twebtool

class ClaveService {

    static transactional = true

    def serviceMethod() {

    }

    def newClave(params){
        def claveInstance = new Clave(params)
        if(claveInstance.validate()){
                claveInstance.save()
                def idiomas = Idioma.findAll();
                idiomas.each{
                        claveInstance
                                .addToTextos(new Texto(valor:'',idioma:it))
                                .save()
                }
        }

        return claveInstance
    }
}
