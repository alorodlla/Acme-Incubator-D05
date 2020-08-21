<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:form readonly="true">
	<acme:form-textbox code="entrepreneur.activity.form.label.title" path="title"/>
	<acme:form-moment code="entrepreneur.activity.form.label.start" path="start"/>
	<acme:form-textarea code="entrepreneur.activity.form.label.end" path="end"/>
	<acme:form-textbox code="entrepreneur.activity.form.label.budget" path="budget"/>
	
	
	<acme:form-return code="entrepreneur.activity.form.button.return"/>
</acme:form>
