
<%@ page import="twebtool.Idioma" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'idioma.label', default: 'Idioma')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'idioma.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="nombre" title="${message(code: 'idioma.nombre.label', default: 'Nombre')}" />
                        
                            <g:sortableColumn property="localeValue" title="${message(code: 'idioma.localeValue.label', default: 'Locale Value')}" />
                        
                            <th><g:message code="idioma.proyecto.label" default="Proyecto" /></th>
                   	    
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${idiomaInstanceList}" status="i" var="idiomaInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${idiomaInstance.id}">${fieldValue(bean: idiomaInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: idiomaInstance, field: "nombre")}</td>
                        
                            <td>${fieldValue(bean: idiomaInstance, field: "localeValue")}</td>
                        
                            <td>${fieldValue(bean: idiomaInstance, field: "proyecto")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${idiomaInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
