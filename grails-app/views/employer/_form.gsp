<%@ page import="realtimetoday.Employer" %>



<div class="fieldcontain ${hasErrors(bean: employerInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="employer.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${employerInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employerInstance, field: 'companyName', 'error')} required">
	<label for="companyName">
		<g:message code="employer.companyName.label" default="Company Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="companyName" required="" value="${employerInstance?.companyName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employerInstance, field: 'address1', 'error')} ">
	<label for="address1">
		<g:message code="employer.address1.label" default="Address1" />
		
	</label>
	<g:textField name="address1" value="${employerInstance?.address1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employerInstance, field: 'address2', 'error')} ">
	<label for="address2">
		<g:message code="employer.address2.label" default="Address2" />
		
	</label>
	<g:textField name="address2" value="${employerInstance?.address2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employerInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="employer.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${employerInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employerInstance, field: 'companyUrl', 'error')} ">
	<label for="companyUrl">
		<g:message code="employer.companyUrl.label" default="Company Url" />
		
	</label>
	<g:textField name="companyUrl" value="${employerInstance?.companyUrl}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employerInstance, field: 'companyUser', 'error')} ">
	<label for="companyUser">
		<g:message code="employer.companyUser.label" default="Company User" />
		
	</label>
	<g:textField name="companyUser" value="${employerInstance?.companyUser}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employerInstance, field: 'ein', 'error')} required">
	<label for="ein">
		<g:message code="employer.ein.label" default="Ein" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="ein" required="" value="${fieldValue(bean: employerInstance, field: 'ein')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employerInstance, field: 'phoneNo', 'error')} ">
	<label for="phoneNo">
		<g:message code="employer.phoneNo.label" default="Phone No" />
		
	</label>
	<g:textField name="phoneNo" value="${employerInstance?.phoneNo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employerInstance, field: 'phoneType', 'error')} ">
	<label for="phoneType">
		<g:message code="employer.phoneType.label" default="Phone Type" />
		
	</label>
	<g:textField name="phoneType" value="${employerInstance?.phoneType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employerInstance, field: 'state', 'error')} ">
	<label for="state">
		<g:message code="employer.state.label" default="State" />
		
	</label>
	<g:textField name="state" value="${employerInstance?.state}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employerInstance, field: 'zipCode', 'error')} ">
	<label for="zipCode">
		<g:message code="employer.zipCode.label" default="Zip Code" />
		
	</label>
	<g:textField name="zipCode" value="${employerInstance?.zipCode}"/>
</div>

