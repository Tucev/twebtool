
<%@ page import="twebtool.Texto" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'texto.label', default: 'Texto')}" />
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
            <g:hasErrors bean="${textoInstance}">
            <div class="errors">
                <g:renderErrors bean="${textoInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${textoInstance?.id}" />
                <g:hiddenField name="version" value="${textoInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="idiomas"><g:message code="texto.idiomas.label" default="Idiomas" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: textoInstance, field: 'idiomas', 'errors')}">
                                    <g:select name="idiomas.id" from="${twebtool.Idioma.list()}" optionKey="id" value="${textoInstance?.idiomas?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="valor"><g:message code="texto.valor.label" default="Valor" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: textoInstance, field: 'valor', 'errors')}">
                                    <g:textField name="valor" value="${textoInstance?.valor}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="claves"><g:message code="texto.claves.label" default="Claves" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: textoInstance, field: 'claves', 'errors')}">
                                    <g:select name="claves.id" from="${twebtool.Clave.list()}" optionKey="id" value="${textoInstance?.claves?.id}"  />
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
