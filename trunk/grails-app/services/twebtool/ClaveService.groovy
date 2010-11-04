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


    def initialImport(Properties props, Proyecto proyecto){
        initializeData(proyecto)
        def idiomas = Idioma.findAllByProyecto(proyecto)

        props.propertyNames().each{ it ->
                def claveInstance = new Clave(nombre:it,proyecto:proyecto,descripcion:'')
                claveInstance.save()
                idiomas.each{ id ->
                        def valorDefault 
                        if(id.nombre=='default'){
                                valorDefault = props.getProperty(it)
                        }else{
                                valorDefault = ''
                        }
                        claveInstance
                                .addToTextos(new Texto(valor:valorDefault,idioma:id))
                                .save()
                }
        }

    }


    private initializeData(Proyecto proyecto){

        //borramos todos los textos y claves         
        def claves = Clave.findAllByProyecto(proyecto)
        claves.each{
                it.delete(flush:true)        
        }

    }

}
