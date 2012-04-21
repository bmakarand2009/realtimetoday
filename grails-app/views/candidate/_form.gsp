<%@ page import="realtimetoday.Candidate" %>



<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="candidate.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${candidateInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'address1', 'error')} ">
	<label for="address1">
		<g:message code="candidate.address1.label" default="Address1" />
		
	</label>
	<g:textField name="address1" value="${candidateInstance?.address1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'address2', 'error')} ">
	<label for="address2">
		<g:message code="candidate.address2.label" default="Address2" />
		
	</label>
	<g:textField name="address2" value="${candidateInstance?.address2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="candidate.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${candidateInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="candidate.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" value="${candidateInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="candidate.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${candidateInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'phoneNumber', 'error')} ">
	<label for="phoneNumber">
		<g:message code="candidate.phoneNumber.label" default="Phone Number" />
		
	</label>
	<g:textField name="phoneNumber" value="${candidateInstance?.phoneNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'state', 'error')} ">
	<label for="state">
		<g:message code="candidate.state.label" default="State" />
		
	</label>
	<g:textField name="state" value="${candidateInstance?.state}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'zipCode', 'error')} ">
	<label for="zipCode">
		<g:message code="candidate.zipCode.label" default="Zip Code" />
		
	</label>
	<g:textField name="zipCode" value="${candidateInstance?.zipCode}"/>
</div>

