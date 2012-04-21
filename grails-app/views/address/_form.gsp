<%@ page import="realtimetoday.Address" %>



<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'address1', 'error')} ">
	<label for="address1">
		<g:message code="address.address1.label" default="Address1" />
		
	</label>
	<g:textField name="address1" value="${addressInstance?.address1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'address2', 'error')} ">
	<label for="address2">
		<g:message code="address.address2.label" default="Address2" />
		
	</label>
	<g:textField name="address2" value="${addressInstance?.address2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'candidate', 'error')} required">
	<label for="candidate">
		<g:message code="address.candidate.label" default="Candidate" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="candidate" name="candidate.id" from="${realtimetoday.Candidate.list()}" optionKey="id" required="" value="${addressInstance?.candidate?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="address.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${addressInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'employer', 'error')} required">
	<label for="employer">
		<g:message code="address.employer.label" default="Employer" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="employer" name="employer.id" from="${realtimetoday.Employer.list()}" optionKey="id" required="" value="${addressInstance?.employer?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'state', 'error')} ">
	<label for="state">
		<g:message code="address.state.label" default="State" />
		
	</label>
	<g:textField name="state" value="${addressInstance?.state}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'zipCode', 'error')} ">
	<label for="zipCode">
		<g:message code="address.zipCode.label" default="Zip Code" />
		
	</label>
	<g:textField name="zipCode" value="${addressInstance?.zipCode}"/>
</div>

