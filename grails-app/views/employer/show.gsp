
<%@ page import="realtimetoday.Employer" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'employer.label', default: 'Employer')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-employer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-employer" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list employer">
			
				<g:if test="${employerInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="employer.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${employerInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employerInstance?.companyName}">
				<li class="fieldcontain">
					<span id="companyName-label" class="property-label"><g:message code="employer.companyName.label" default="Company Name" /></span>
					
						<span class="property-value" aria-labelledby="companyName-label"><g:fieldValue bean="${employerInstance}" field="companyName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employerInstance?.address1}">
				<li class="fieldcontain">
					<span id="address1-label" class="property-label"><g:message code="employer.address1.label" default="Address1" /></span>
					
						<span class="property-value" aria-labelledby="address1-label"><g:fieldValue bean="${employerInstance}" field="address1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employerInstance?.address2}">
				<li class="fieldcontain">
					<span id="address2-label" class="property-label"><g:message code="employer.address2.label" default="Address2" /></span>
					
						<span class="property-value" aria-labelledby="address2-label"><g:fieldValue bean="${employerInstance}" field="address2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employerInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="employer.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${employerInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employerInstance?.companyUrl}">
				<li class="fieldcontain">
					<span id="companyUrl-label" class="property-label"><g:message code="employer.companyUrl.label" default="Company Url" /></span>
					
						<span class="property-value" aria-labelledby="companyUrl-label"><g:fieldValue bean="${employerInstance}" field="companyUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employerInstance?.companyUser}">
				<li class="fieldcontain">
					<span id="companyUser-label" class="property-label"><g:message code="employer.companyUser.label" default="Company User" /></span>
					
						<span class="property-value" aria-labelledby="companyUser-label"><g:fieldValue bean="${employerInstance}" field="companyUser"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employerInstance?.ein}">
				<li class="fieldcontain">
					<span id="ein-label" class="property-label"><g:message code="employer.ein.label" default="Ein" /></span>
					
						<span class="property-value" aria-labelledby="ein-label"><g:fieldValue bean="${employerInstance}" field="ein"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employerInstance?.phoneNo}">
				<li class="fieldcontain">
					<span id="phoneNo-label" class="property-label"><g:message code="employer.phoneNo.label" default="Phone No" /></span>
					
						<span class="property-value" aria-labelledby="phoneNo-label"><g:fieldValue bean="${employerInstance}" field="phoneNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employerInstance?.phoneType}">
				<li class="fieldcontain">
					<span id="phoneType-label" class="property-label"><g:message code="employer.phoneType.label" default="Phone Type" /></span>
					
						<span class="property-value" aria-labelledby="phoneType-label"><g:fieldValue bean="${employerInstance}" field="phoneType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employerInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="employer.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${employerInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employerInstance?.zipCode}">
				<li class="fieldcontain">
					<span id="zipCode-label" class="property-label"><g:message code="employer.zipCode.label" default="Zip Code" /></span>
					
						<span class="property-value" aria-labelledby="zipCode-label"><g:fieldValue bean="${employerInstance}" field="zipCode"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${employerInstance?.id}" />
					<g:link class="edit" action="edit" id="${employerInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
