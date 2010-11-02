
<%@ page import="twebtool.Proyecto" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'proyecto.label', default: 'Proyecto')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${proyectoInstance}">
            <div class="errors">
                <g:renderErrors bean="${proyectoInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${proyectoInstance?.id}" />
                <g:hiddenField name="version" value="${proyectoInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="nombre"><g:message code="proyecto.nombre.label" default="Nombre" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: proyectoInstance, field: 'nombre', 'errors')}">
                                    <g:textField name="nombre" value="${proyectoInstance?.nombre}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="logo"><g:message code="proyecto.logo.label" default="Logo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: proyectoInstance, field: 'logo', 'errors')}">
                                    <g:textField name="logo" value="${proyectoInstance?.logo}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="idiomas"><g:message code="proyecto.idiomas.label" default="Idiomas" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: proyectoInstance, field: 'idiomas', 'errors')}">
                                    <g:select name="idiomas" from="${twebtool.Idioma.list()}" multiple="yes" optionKey="id" size="5" value="${proyectoInstance?.idiomas*.id}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="claves"><g:message code="proyecto.claves.label" default="Claves" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: proyectoInstance, field: 'claves', 'errors')}">
                                    <g:select name="claves" from="${twebtool.Clave.list()}" multiple="yes" optionKey="id" size="5" value="${proyectoInstance?.claves*.id}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
