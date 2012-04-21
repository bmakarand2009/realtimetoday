
<%@ page import="realtimetoday.Employer" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'employer.label', default: 'Employer')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-employer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-employer" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="email" title="${message(code: 'employer.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="companyName" title="${message(code: 'employer.companyName.label', default: 'Company Name')}" />
					
						<g:sortableColumn property="address1" title="${message(code: 'employer.address1.label', default: 'Address1')}" />
					
						<g:sortableColumn property="address2" title="${message(code: 'employer.address2.label', default: 'Address2')}" />
					
						<g:sortableColumn property="city" title="${message(code: 'employer.city.label', default: 'City')}" />
					
						<g:sortableColumn property="companyUrl" title="${message(code: 'employer.companyUrl.label', default: 'Company Url')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${employerInstanceList}" status="i" var="employerInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${employerInstance.id}">${fieldValue(bean: employerInstance, field: "email")}</g:link></td>
					
						<td>${fieldValue(bean: employerInstance, field: "companyName")}</td>
					
						<td>${fieldValue(bean: employerInstance, field: "address1")}</td>
					
						<td>${fieldValue(bean: employerInstance, field: "address2")}</td>
					
						<td>${fieldValue(bean: employerInstance, field: "city")}</td>
					
						<td>${fieldValue(bean: employerInstance, field: "companyUrl")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${employerInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
