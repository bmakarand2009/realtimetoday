
<%@ page import="realtimetoday.Candidate" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'candidate.label', default: 'Candidate')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-candidate" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-candidate" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="email" title="${message(code: 'candidate.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="address1" title="${message(code: 'candidate.address1.label', default: 'Address1')}" />
					
						<g:sortableColumn property="address2" title="${message(code: 'candidate.address2.label', default: 'Address2')}" />
					
						<g:sortableColumn property="city" title="${message(code: 'candidate.city.label', default: 'City')}" />
					
						<g:sortableColumn property="firstName" title="${message(code: 'candidate.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'candidate.lastName.label', default: 'Last Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${candidateInstanceList}" status="i" var="candidateInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${candidateInstance.id}">${fieldValue(bean: candidateInstance, field: "email")}</g:link></td>
					
						<td>${fieldValue(bean: candidateInstance, field: "address1")}</td>
					
						<td>${fieldValue(bean: candidateInstance, field: "address2")}</td>
					
						<td>${fieldValue(bean: candidateInstance, field: "city")}</td>
					
						<td>${fieldValue(bean: candidateInstance, field: "firstName")}</td>
					
						<td>${fieldValue(bean: candidateInstance, field: "lastName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${candidateInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
