
<%@ page import="twebtool.Idioma" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'idioma.label', default: 'Idioma')}" />
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
            <g:hasErrors bean="${idiomaInstance}">
            <div class="errors">
                <g:renderErrors bean="${idiomaInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${idiomaInstance?.id}" />
                <g:hiddenField name="version" value="${idiomaInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="nombre"><g:message code="idioma.nombre.label" default="Nombre" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: idiomaInstance, field: 'nombre', 'errors')}">
                                    <g:textField name="nombre" value="${idiomaInstance?.nombre}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="localeValue"><g:message code="idioma.localeValue.label" default="Locale Value" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: idiomaInstance, field: 'localeValue', 'errors')}">
                                    <g:textField name="localeValue" value="${idiomaInstance?.localeValue}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="textos"><g:message code="idioma.textos.label" default="Textos" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: idiomaInstance, field: 'textos', 'errors')}">
                                    
<ul>
<g:each in="${idiomaInstance?.textos?}" var="t">
    <li><g:link controller="texto" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="texto" action="create" params="['idioma.id': idiomaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'texto.label', default: 'Texto')])}</g:link>

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="proyecto"><g:message code="idioma.proyecto.label" default="Proyecto" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: idiomaInstance, field: 'proyecto', 'errors')}">
                                    <g:select name="proyecto.id" from="${twebtool.Proyecto.list()}" optionKey="id" value="${idiomaInstance?.proyecto?.id}"  />
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
