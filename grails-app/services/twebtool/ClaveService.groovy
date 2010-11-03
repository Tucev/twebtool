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
        
        def idiomaDefault = initializeData(proyecto)
        props.propertyNames().each{
                def claveInstance = new Clave(nombre:it,proyecto:proyecto,descripcion:'')
                claveInstance.save()
                claveInstance
                        .addToTextos(new Texto(valor:props.getProperty(it),idioma:idiomaDefault))
                        .save()
        }

    }


    private initializeData(Proyecto proyecto){

        //borramos todos los textos, claves e idiomas
        def idiomas = Idioma.findAllByProyecto(proyecto)        
        def claves = Clave.findAllByProyecto(proyecto)
        idiomas.each{
                it.delete(flush:true)
        }
        claves.each{
                it.delete(flush:true)        
        }

        //creamos idioma Default
        def i = new Idioma(nombre:"default",localeValue:"default",proyecto:proyecto)
        i.save(flush:true)
        return i
    }

}
