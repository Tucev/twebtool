package twebtool

class ProyectoService {

    static transactional = true

    def serviceMethod() {

    }

    def newProyecto(params){
        def proyectoInstance = new Proyecto(params)
        if(proyectoInstance.validate()){
                proyectoInstance.save()
                  //creamos idioma Default
                proyectoInstance
                        .addToIdiomas(new Idioma(nombre:"default",localeValue:"default"))
                        .save()       
        }
        return proyectoInstance
    }
}
