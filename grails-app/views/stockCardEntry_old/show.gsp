
<%@ page import="org.pih.warehouse.inventory.StockCardItem" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${warehouse.message(code: 'stockCardEntry.label', default: 'StockCardEntry')}" />
        <title><warehouse:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list"><warehouse:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><warehouse:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><warehouse:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><warehouse:message code="stockCardEntry.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: stockCardEntryInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><warehouse:message code="stockCardEntry.quantityOutgoing.label" default="Quantity Outgoing" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: stockCardEntryInstance, field: "quantityOutgoing")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><warehouse:message code="stockCardEntry.stockCard.label" default="Stock Card" /></td>
                            
                            <td valign="top" class="value"><g:link controller="stockCard" action="show" id="${stockCardEntryInstance?.stockCard?.id}">${stockCardEntryInstance?.stockCard?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><warehouse:message code="stockCardEntry.remainingBalance.label" default="Remaining Balance" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: stockCardEntryInstance, field: "remainingBalance")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><warehouse:message code="stockCardEntry.quantityIncoming.label" default="Quantity Incoming" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: stockCardEntryInstance, field: "quantityIncoming")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><warehouse:message code="stockCardEntry.startingBalance.label" default="Starting Balance" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: stockCardEntryInstance, field: "startingBalance")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><warehouse:message code="stockCardEntry.entryDate.label" default="Entry Date" /></td>
                            
                            <td valign="top" class="value"><format:datetime obj="${stockCardEntryInstance?.entryDate}" /></td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${stockCardEntryInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${warehouse.message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${warehouse.message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${warehouse.message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
