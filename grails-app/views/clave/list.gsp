
<%@ page import="twebtool.Clave" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'clave.label', default: 'Clave')}" />
<g:javascript library="prototype" />

        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.import.label" args="[entityName]" /></h1>
<g:form controller="clave" method="post" action="upload" enctype="multipart/form-data">
    <input type="file" name="file"/><input type="submit" onclick="return confirm('${message(code: 'import.init.question', default: 'Are you sure?')}');" />


</g:form>

            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:if test="${flash.error}">
            <div class="errors"><ul><li>${flash.error}</li></ul></div>
            </g:if>

            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'clave.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="nombre" title="${message(code: 'clave.nombre.label', default: 'Nombre')}" />
                        
                            <g:sortableColumn property="descripcion" title="${message(code: 'clave.descripcion.label', default: 'Descripcion')}" />
                        
                            <th><g:message code="clave.proyecto.label" default="Proyecto" /></th>
                   	    
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${claveInstanceList}" status="i" var="claveInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${claveInstance.id}">${fieldValue(bean: claveInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: claveInstance, field: "nombre")}</td>
                        
                            <td>${fieldValue(bean: claveInstance, field: "descripcion")}</td>
                        
                            <td>${fieldValue(bean: claveInstance, field: "proyecto")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${claveInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
